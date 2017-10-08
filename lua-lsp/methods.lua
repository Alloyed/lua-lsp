-- the actual meat and potatos of the app
local analyze = require 'lua-lsp.analyze'
local rpc     = require 'lua-lsp.rpc'
local log     = require 'lua-lsp.log'
local utf     = require 'lua-lsp.unicode'
local json    = require 'dkjson'
local unpack  = table.unpack or unpack

local method_handlers = {}

function method_handlers.initialize(params, id)
	if Initialized then
		error("already initialized!")
	end
	Config.root  = params.rootPath or params.rootUri
	log.setTraceLevel(params.trace or "off")
	log.info("Config.root = %q", Config.root)
	analyze.load_completerc(Config.root)
	--ClientCapabilities = params.capabilities
	Initialized = true

	-- hopefully this is modest enough
	return rpc.respond(id, {
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
			hoverProvider = true,
			documentSymbolProvider = false,
			--referencesProvider = false,
			--documentHighlightProvider = false,
			--workspaceSymbolProvider = false,
			--codeActionProvider = false,
			--documentFormattingProvider = false,
			--documentRangeFormattingProvider = false,
			--renameProvider = false,
		}
	})
end

method_handlers["textDocument/didOpen"] = function(params)
	Documents[params.textDocument.uri] = params.textDocument
	analyze.refresh(params.textDocument)
end

method_handlers["textDocument/didChange"] = function(params)
	local document = analyze.document(params.textDocument)

	for _, patch in ipairs(params.contentChanges) do
		if (patch.range == nil and patch.rangeLength == nil) then
			document.text = patch.text
		else
			error("Incremental changes NYI")
			-- remove text from patch.range.start -> patch.range["end"]
			-- assert(patch.rangeLength == actual_length)
			-- then insert patch.text at origin point
		end
	end

	analyze.refresh(document)
end

method_handlers["textDocument/didSave"] = function(params)
	local uri = params.textDocument.uri
	local document = analyze.document(uri)
	-- FIXME: merge in details from params.textDocument
	analyze.refresh(document)
end

method_handlers["textDocument/didClose"] = function(params)
	Documents[params.textDocument.uri] = nil
end

local function pick_scope(dirty, scopes, pos)
	assert(scopes ~= nil)
	local closest = nil
	local size = math.huge
	assert(#scopes > 0)
	if dirty then
		-- ignore posEnd, it's probably wrong
		for _, scope in ipairs(scopes) do
			local meta = getmetatable(scope)
			local dist = pos - meta.pos
			if meta.pos <= pos and dist < size then
				size = dist
				closest = scope
			end
		end
	else
		for _, scope in ipairs(scopes) do
			local meta = getmetatable(scope)
			local dist = meta.posEnd - meta.pos
			if meta.pos <= pos and meta.posEnd >= pos and dist < size then
				size = dist
				closest = scope
			end
		end
	end
	assert(closest, require'inspect'(scopes))

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

local function merge_(a, b)
	for k, v in pairs(b) do a[k] = v end
end

local function make_items(k, _, val, isVariant)
	local item = { label = k }

	if val then
		if not isVariant and val.variants then
			local items = {}
			for _, variant in ipairs(val.variants) do
				local fakeval = {}
				merge_(fakeval, val)
				fakeval.variants = nil
				merge_(fakeval, variant)
				local i = make_items(k, _, fakeval, true)
				table.insert(items, i[1])
			end
			return items
		end
		item.kind = completionKinds.Variable
		if val.tag == "Require" then
			-- this is a module
			item.kind = completionKinds.Module
			item.detail = ("M<%s>"):format(val.module)
		elseif val.tag == "Function" then
			-- generate function signature
			local sig
			if val.signature then
				sig = val.signature
			else
				sig = {}
				if val.arguments then
					for _, name in ipairs(val.arguments) do
						if name.tag == "Dots" then
							table.insert(sig, "...")
						elseif name[1] then
							table.insert(sig, name[1])
						elseif name.displayName then
							table.insert(sig, name.displayName)
						elseif name.name then
							table.insert(sig, name.name)
						end
					end
				else
					table.insert(sig, "?")
				end
				sig = table.concat(sig, ", ")
			end

			local ret = ""
			local literals = {
				String = "string", Number = "number", True = "bool",
				False = "bool", Nil = "nil"
			}
			if val.scope then
				local scope_mt = getmetatable(val.scope)
				if scope_mt._return then
					local types, values, noValues = {}, {}, false
					for _, r in ipairs(scope_mt._return) do
						if literals[r.tag] then
							table.insert(types, literals[r.tag])
							if not r[1] then
								noValues = true
							elseif r.tag == "String" then
								table.insert(values, string.format("%q", r[1]))
							elseif r.tag == "Number" then
								table.insert(values, tostring(r[1]))
							end
						else
							noValues = true
						end
					end
					if noValues then
						ret = table.concat(types, "|")
					else
						ret = table.concat(values, "|")
					end
					--ret = "?"
				end
			elseif val.returns then
				ret = {}
				for _, r in ipairs(val.returns) do table.insert(ret, r.name) end
				ret = table.concat(ret, ", ")
			end

			if ret ~= "" then
				ret = string.format("-> %s", ret)
			end

			item.kind = completionKinds.Function
			item.insertText = k
			item.label = ("%s(%s) %s"):format(k, sig, ret)
			item.detail = "<fn>"
			item.documentation = val.description
		elseif val.tag == "Table" then
			item.detail = "<table>"
			item.documentation = val.description
		elseif val.tag == "String" then
			item.documentation = val.description
			if val.value then
				item.detail = string.format("%q", val.value)
			else
				item.detail = string.format("<%s>", val.tag)
			end
		elseif val.tag == "Literal" then
			item.documentation = val.description
			if val.value then
				item.detail = tostring(val.value)
			end
		elseif val.tag == "Arg" then
			item.detail = "<arg>"
		end
	end

	item.kind = nil
	return {item}
end

local function iter_scope(scope)
	return coroutine.wrap(function()
		while scope do
			for key, nodes in pairs(scope) do
				local symbol, value = unpack(nodes)
				coroutine.yield(key, symbol, value)
			end
			local mt = getmetatable(scope)
			scope = mt and mt.__index
		end
	end)
end

local function make_position(document, pos)
	-- HACK: I'm not entirely sure why the AST is spitting out indexes larger
	-- than the string but clamping it seems fine
	if pos == document.text:len() + 1 then
		pos = pos - 1
	end
	assert(pos > 0)
	assert(pos <= document.text:len())
	for i, line in ipairs(document.lines) do
		if line.start <= pos and line.start + line.text:len() >= pos then
			local text = line.text
			return {
				line = i-1,
				character = utf.to_codeunits(text, pos - line.start + 1)
			}
		end
	end
	error("invalid pos")
end

-- turn two index arguments into a range
local function make_range(document, startidx, endidx)
	return {
		start   = make_position(document, startidx),
		["end"] = make_position(document, endidx)
	}
end

local function make_location(document, symbol)
	assert(symbol.pos)
	assert(symbol.posEnd)
	return {
		uri = document.uri,
		range = make_range(document, symbol.pos, symbol.posEnd)
	}
end

--- Returns line object, line index, and global index for an LSP position.
-- line index and global index are measured in bytes, starting from 1
local function line_for(document, pos)
	local line = document.lines[pos.line+1]
	local char = utf.to_bytes(line.text, pos.character)

	return line, char, line.start + char - 1
end

-- return the line represented by lineno.
local function line_for_text(text, lineno)
	local ii = 1
	local i  = 1
	local len = text:len()
	while ii <= len do
		local pos_s, pos_e = string.find(text, "([^\n]*)\n?", ii)
		if i == lineno then
			return {
				text = text:sub(pos_s, pos_e),
				start = pos_s,
				["end"] = pos_e,
				_doc = false
			}
		end
		ii = pos_e + 1
		i = i + 1
	end
	error("not found")
end

local function split_path(path)
	local path_ids = {}

	local i = 1
	while path:find("[:.]", i) do
		local is, ie = path:find("[:.]", i)
		table.insert(path_ids, path:sub(i, is-1))
		i = ie+1
	end
	table.insert(path_ids, path:sub(i, -1))

	return path_ids
end

local definition_of
--- Get pair(), and unpack them automatically
local function getp(doc, t, k)
	local pair = t[k]
	if pair then
		local key, value = unpack(pair)
		if value.tag == "Require" then
			-- Resolve the return value of this module
			local ref = analyze.module(value.module)
			doc = ref
			if ref then
				local mt = ref.scopes and getmetatable(ref.scopes[1])
				local ret = mt and mt._return and mt._return[1]
				if ret and ret.tag == "Id" then
					local _
					_, value, doc = definition_of(ref, ret)
				else
					value = ret
				end
			end
		end

		return key, value, doc
	end
	return nil
end


function definition_of(doc, id_or_pos)
	local document = analyze.document(doc)

	local word, cursor
	if id_or_pos.tag then
		local id = id_or_pos
		word  = id[1]
		assert(id.tag == "String" or id.tag == "Id", id.tag)
		assert(type(word) == "string", require'inspect'(id, {depth = 3}))
		cursor = id.pos+1
	else
		local line, char
		line, char, cursor = line_for(document, id_or_pos)
		local word_s = line.text:sub(1, char):find("[%w.:_]*$")
		local _, word_e = line.text:sub(char, -1):find("[%w_]*")
		word_e = word_e + char - 1
		word = line.text:sub(word_s, word_e)
	end
	local scope = pick_scope(document.dirty, document.scopes, cursor)
	local word_start = word:match("^([^.:]+)")

	local symbol, val
	symbol, val, document = getp(document, scope, word_start)
	if symbol and symbol.pos <= cursor then
		if word:find("[:.]") then
			local path_ids = split_path(word)

			local function follow_path(ii, _scope)
				assert(_scope, require'inspect'(val, {depth =2}))
				local key = path_ids[ii]
				local last = ii == #path_ids
				local isym, ival, idoc = getp(document, _scope, key)
				assert(isym)
				if not isym then return nil, nil end

				if last then
					return isym, ival, idoc
				else
					if ival.tag == "Table" and ival.scope then
						return follow_path(ii+1, ival.scope)
					end
				end
			end
			symbol, val, document = follow_path(2, val.scope)
		end

		return symbol, val, document
	end
end

method_handlers["textDocument/completion"] = function(params, id)
	local document = analyze.document(params.textDocument)
	if document.scopes == nil then
		return rpc.respond(id, {
			isIncomplete = false,
			items = {}
		})
	end
	local line, char, pos = line_for(document, params.position)
	local word = line.text:sub(1, char):match("[A-Za-z_][%w_.:]*$") or ""

	local items = {}
	local used  = {}
	local scope = pick_scope(document.dirty, document.scopes, pos)
	if scope == nil then
		return rpc.respond(id, {
			isIncomplete = false,
			items = {}
		})
	end
	log("looking for %q", word)

	if word:find("[:.]") then
		local path_ids, is_method = split_path(word)
		-- path scope
		local function follow_path(ii, _scope)
			assert(_scope)
			local _iword = path_ids[ii]
			local last = ii == #path_ids
			if last then
				for iname, node, val in iter_scope(_scope) do
					if iname:sub(1, _iword:len()) == _iword then
						for _, item in ipairs(make_items(iname, node, val)) do
							table.insert(items, item)
						end
					end
				end
			else
				local node, val = getp(document, _scope,_iword)
				if node then
					if val.tag == "Table" then
						if val.scope then
							return follow_path(ii+1, val.scope)
						end
					end
				end
			end
		end
		follow_path(1, scope)
	else
		-- variable scope
		for iname, node, val in iter_scope(scope) do
			if not used[iname] and node.posEnd < pos then
				used[iname] = true
				if iname:sub(1, word:len()) == word then
					for _, item in ipairs(make_items(iname, node, val)) do
						table.insert(items, item)
					end
				end
			end
		end
	end

	return rpc.respond(id, {
		isIncomplete = false,
		items = items
	})
end

method_handlers["textDocument/definition"] = function(params, id)
	local document = analyze.document(params.textDocument)

	local line, char = line_for(document, params.position)
	local word_s = line.text:sub(1, char):find("[%w.:_]*$")
	local _, word_e = line.text:sub(char, -1):find("[%w_]*")
	word_e = word_e + char - 1
	local word = line.text:sub(word_s, word_e)

	local symbol, _, doc = definition_of(params.textDocument, params.position)
	if symbol and symbol.canGoto ~= false then
		local sub = doc.text:sub(symbol.pos, symbol.posEnd)
		local word_end = word:match("([^.:]+)$")
		local a, b = string.find(sub, word_end, 1, true)
		if not a then
			error(("find %q in %q"):format(word_end, sub))
		end
		a, b = a + symbol.pos - 1, b + symbol.pos - 1

		return rpc.respond(id, {
			uri = doc.uri,
			range = make_range(document, a, b)
		})
	end

	-- No results
	return rpc.respond(id, json.null)
end

method_handlers["textDocument/hover"] = function(params, id)
	local document = analyze.document(params.textDocument)
	if not document.scopes then
		return rpc.respondError(id, "No AST data")
	end

	local line, char, _ = line_for(document, params.position)
	local word_s = line.text:sub(1, char):find("[%w.:_]*$")
	local _, word_e = line.text:sub(char, -1):find("[%w_]*")
	word_e = word_e + char - 1
	local word = line.text:sub(word_s, word_e)

	local symbol, value = definition_of(params.textDocument, params.position)
	if symbol then
		local contents = {}

		local item = make_items(word, symbol, value)
		log("item: %t1", item)
		item = item[1]

		if value.tag == "Function" then
			table.insert(contents, item.label.."\n")
			table.insert(contents, item.documentation)
		end
		return rpc.respond(id, {
			contents = contents
		})
	end

	-- This is the no result response, see:
	-- https://github.com/Microsoft/language-server-protocol/issues/261
	return rpc.respond(id,{
		contents = {}
	})
end

method_handlers["textDocument/documentSymbol"] = function(params, id)
	local document = analyze.document(params.textDocument)
	local symbols = {}

	-- FIXME: report table keys too, like a.b.c
	-- also consider making a linear list of symbols we can just iterate
	-- through
	for _, scope in ipairs(document.scopes) do
		for _, pair in pairs(scope) do
			local symbol, _ = unpack(pair)
			if symbol.canGoto ~= false then
				table.insert(symbols, {
					name = symbol[1],
					kind = 13,
					location = make_location(document, symbol),
					containerName = nil -- use for fields
				})
			end
		end
	end
	return rpc.respond(id, symbols)
end

method_handlers["textDocument/formatting"] = function(params, id)
	local doc = analyze.document(params.textDocument)
	local indent = "\t"
	if params.options.insertSpaces then
		indent = string.rep(" ", params.options.tabSize)
	end

	local format = require 'lua-lsp.formatting'
	local new = format.format(doc.text,{indent = indent})

	rpc.respond(id, {
		{
			range = make_range(doc, 1, #doc.text),
			newText = new
		}
	})
end

method_handlers["textDocument/rangeFormatting"] = function(params, id)
	local doc = analyze.document(params.textDocument)
	local indent = "\t"
	if params.options.insertSpaces then
		indent = string.rep(" ", params.options.tabSize)
	end
	local format = require 'lua-lsp.formatting'
	local new = format.format(doc.text,{indent = indent})

	local _, _, sidx = line_for(doc, params.range.start)
	local _, _, ridx = line_for(doc, params.range["end"])
	local line, _, _ = line_for_text(new, params.range["end"].line+1)

	local eidx = line.start + #line.text - 1
	local changed = new:sub(sidx, eidx)
	return rpc.respond(id, {
		{
			range = make_range(doc, sidx, ridx),
			newText = changed
		}
	})
end


function method_handlers.shutdown(_, id)
	Shutdown = true
	return rpc.respond(id, json.null)
end

function method_handlers.exit(_)
	if Shutdown then
		os.exit(0)
	else
		os.exit(1)
	end
end

return method_handlers
