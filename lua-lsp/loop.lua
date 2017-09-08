local analyze = require 'lua-lsp.analyze'
local rpc     = require 'lua-lsp.rpc'
local log     = require 'lua-lsp.log'
local utf     = require 'lua-lsp.unicode'

local Documents = {}
local Shutdown = false
local Initialized = false

local method_handlers = {}

local function main(_)
	log("hi mom!")
	while not Shutdown do
		-- header
		local data = assert(rpc.decode())
		if data.method then
			-- request
			if not method_handlers[data.method] then
				log("WARNING: %s NYI", data.method)
			else
				local ok, err = xpcall(function()
					method_handlers[data.method](data.params, data.id)
				end, debug.traceback)
				if not ok then
					log("---------------------")
					log("%s", err)
					log("---------------------")
					--rpc.respondError(data.id, err, "InternalError")
				end
			end
		elseif data.result then
			rpc.finish(data)
		elseif data.error then
			log("client error:%s", data.error.message)
		end
	end
end

function method_handlers.initialize(params, id)
	if Initialized then
		error("already initialized!")
	end
	--local root  = params.rootPath or params.rootUri
	log.setTraceLevel(params.trace or "off")
	--if params.initializationOptions then
	--	-- use for server-specific config?
	--end
	--ClientCapabilities = params.capabilities
	Initialized = true

	-- hopefully this is modest enough
	rpc.respond(id, {
		capabilities = {
			completionProvider = {
				triggerCharacters = {".",":"},
				resolveProvider = false
			},
			definitionProvider = true,
			textDocumentSync = {
				openClose = true,
				change = 1, -- 1 is non-incremental, 2 is incremental
				save = { includeText = true },
			},
			--hoverProvider = false,
			--referencesProvider = false,
			--documentHighlightProvider = false,
			--documentSymbolProvider = false,
			--workspaceSymbolProvider = false,
			--codeActionProvider = false,
			--documentFormattingProvider = false,
			--documentRangeFormattingProvider = false,
			--renameProvider = false,
		}
	})
end

local function document_for(uri)
	if Documents[uri] then
		return Documents[uri]
	end
	local document = {}
	document.uri = uri

	log("opening %q", uri)
	local f = assert(io.open(uri:gsub("^[^:]+://", ""), "r"))
	document.text  = f:read("*a")
	f:close()

	analyze.document(document)

	Documents[uri] = document

	return document
end

method_handlers["textDocument/didOpen"] = function(params)
	Documents[params.textDocument.uri] = params.textDocument
	analyze.document(params.textDocument)
end

method_handlers["textDocument/didChange"] = function(params)
	local uri = params.textDocument.uri
	local document = document_for(uri)

	for _, patch in ipairs(params.contentChanges) do
		if (patch.range == nil and patch.rangeLength == nil) then
			document.text = patch.text
		else
			error("NYI")
			-- remove text from patch.range.start -> patch.range["end"]
			-- assert(patch.rangeLength == actual_length)
			-- then insert patch.text at origin point
		end
	end

	analyze.document(document)
end

method_handlers["textDocument/didSave"] = function(params)
	local uri = params.textDocument.uri
	local document = document_for(uri)
	-- FIXME: merge in details from params.textDocument
	analyze.document(document)
end

method_handlers["textDocument/didClose"] = function(params)
	Documents[params.textDocument.uri] = nil
end

local function pick_scope(scopes, pos)
	assert(scopes ~= nil)
	local closest = nil
	local size = math.huge
	for _, scope in ipairs(scopes) do
		local meta = getmetatable(scope)
		local dist = meta.posEnd - meta.pos
		if meta.pos <= pos and meta.posEnd >= pos and dist < size then
			size = dist
			closest = scope
		end
	end

	return closest
end

local completionKinds = {
	Text = 1,
	Method = 2,
	Function = 3,
	Constructor = 4,
	Field = 5,
	Variable = 6,
	Class = 7,
	Interface = 8,
	Module = 9,
	Property = 10,
	Unit = 11,
	Value = 12,
	Enum = 13,
	Keyword = 14,
	Snippet = 15,
	Color = 16,
	File = 17,
	Reference = 18,
}

local function make_item(k, node, val)
	local item = { label = k }
	--log("compl %s = %s", k, require'inspect'(val))

	if val then
		item.kind = completionKinds.Variable
		if val.tag == "Call" then
			if val[1][1] == "require" then
				-- this is a module
				item.kind = completionKinds.Module
			end
		elseif val.tag == "Function" then
			item.kind = completionKinds.Function

			-- generate function signature
			local sig = {}
			for _, name in ipairs(val[1]) do
				if name.tag == "Dots" then
					table.insert(sig, "...")
				else
					table.insert(sig, name[1])
				end
			end
			item.detail = ("%s(%s)"):format(k, table.concat(sig, ", "))
		elseif val.tag == "Table" then
			item.detail = "<table>"
		elseif val.tag == "String" then
			item.detail = string.format("%q", val[1])
		elseif val.tag == "Number" then
			item.detail = tostring(val[1])
		end
	end

	item.kind = nil
	return item
end

local function iter_scope(scope)
	return coroutine.wrap(function()
		while scope do
			for key, nodes in pairs(scope) do
				local symbol, value = unpack(nodes)
				coroutine.yield(key, symbol, value)
			end
			scope = getmetatable(scope).__index
		end
	end)
end

method_handlers["textDocument/completion"] = function(params, id)
	local pos = params.position
	local document = document_for(params.textDocument.uri)
	if document.scopes == nil then
		rpc.respond(id, {
			isIncomplete = false,
			items = {}
		})
	end
	local line = document.lines[pos.line+1]

	local char = utf.to_bytes(line.text, pos.character)
	local word = line.text:sub(1, char):match("[A-Za-z][%w_.:]*$") or ""

	local items = {}
	local used  = {}
	if char then
		local function follow_path(path_ids, ii, scope)
			local iword = path_ids[ii]
			local last = ii == #path_ids
			for iname, nodes in pairs(scope) do
				local node, val = unpack(nodes)
				if last then
					if iname:sub(1, iword:len()) == iword then
						table.insert(items, make_item(iname, node, val))
					end
				elseif iname == iword and val.tag == "Table" then
					follow_path(path_ids, ii+1, val.scope)
				end
			end
		end

		local realpos = line.start + char - 1
		local scope = pick_scope(document.scopes, realpos)

		if word:find("[:.]") then
			-- path scope
			local path_ids = {}
			for s in word:gmatch("[^:.]*") do table.insert(path_ids, s) end

			local iword = path_ids[1]
			for iname, node, val in iter_scope(scope) do
				if not used[iname] and node.pos <= realpos then
					used[iname] = true
					if iname == iword and val.tag == "Table" then
						follow_path(path_ids, 2, val.scope)
					end
				end
			end
		else
			-- local scope
			for iname, node, val in iter_scope(scope) do
				if not used[iname] and node.pos <= realpos then
					used[iname] = true
					if iname:sub(1, word:len()) == word then
						table.insert(items, make_item(iname, node, val))
					end
				end
			end
		end
	end

	rpc.respond(id, {
		isIncomplete = false,
		items = items
	})
end

local function make_linecol(document, pos)
	local last_linepos = nil
	for i, line in ipairs(document.lines) do
		if line.start > pos then
			local text = document.lines[i-1].text
			return i-1-1, utf.to_codeunits(text, pos - last_linepos + 1)
		end
		last_linepos = line.start
	end
	return nil
end

-- turn two realpos arguments into a range
local function make_range(document, startpos, endpos)
	local line1, char1 = make_linecol(document, startpos)
	local line2, char2 = make_linecol(document, endpos)
	return {
		start   = {line = line1, character = char1},
		["end"] = {line = line2, character = char2}
	}
end

method_handlers["textDocument/definition"] = function(params, id)
	local pos = params.position
	local document = document_for(params.textDocument.uri)
	local line = document.lines[pos.line+1]

	local char = utf.to_bytes(line.text, pos.character)
	assert(char)
	local word_s = line.text:sub(1, char):find("[%w.:_]*$")
	-- FIXME: this looks for the parent local, which makes sense if you're
	-- looking at a local variable, but if you want to find an actual function
	-- definition this is inconvenient
	local word = line.text:sub(word_s, -1):match("^([%a_][%w_.:]*)")
	log("Looking for %q", word)

	local used  = {}
	if char then
		local realpos = line.start + char - 1
		local scope = pick_scope(document.scopes, realpos)
		local word_start = word:match("^([^.:]+)")
		log("word_start: %q", word_start)
		for k, symbol in iter_scope(scope) do
			if not used[k] and symbol.pos <= realpos then
				if k == word_start then
					if word:find("[:.]") then
						log("membre!")
					else
						local sub = document.text:sub(symbol.pos, symbol.posEnd)
						local a, b = string.find(sub, k, 1, true)
						a, b = a + symbol.pos - 1, b + symbol.pos - 1

						local range = make_range(document, a, b)
						rpc.respond(id, {
							uri = params.textDocument.uri,
							range = range
						})
						return
					end
				end
			end
		end
	end

	rpc.respondError(id, string.format("symbol %q not found", word))
end

function method_handlers.shutdown(_, id)
	Shutdown = true
	rpc.respond(id, {})
end

function method_handlers.exit(_)
	if Shutdown then
		os.exit(0)
	else
		os.exit(1)
	end
end

return main
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
