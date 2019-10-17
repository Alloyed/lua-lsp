-- the actual meat and potatos of the app
local analyze = require 'tarantool-lsp.analyze'
local rpc     = require 'tarantool-lsp.rpc'
local log     = require 'tarantool-lsp.log'
local utf     = require 'tarantool-lsp.unicode'
local docs 	  = require('tarantool-lsp.tnt-doc.doc-manager')
local json    = require 'json'
local unpack  = table.unpack or unpack

local fio = require('fio')
local fun = require('fun')
local console = require('console')
local method_handlers = {}

function method_handlers.initialize(params, id)
	if _G.Initialized then
		error("already initialized!")
	end
	Config.root  = params.rootPath or params.rootUri
	-- Some LSP clients doesn't provide capabilities for change 'trace' option
	-- and user options can override
	log.setTraceLevel(params.initializationOptions and params.initializationOptions.trace
					  or params.trace or "off")
	log.info("Config.root = %q", Config.root)
	analyze.load_completerc(Config.root)
	analyze.load_luacheckrc(Config.root)

	local ok, err = docs:init({ completions_dir = fio.pathjoin(_G._ROOT_PATH, 'completions') })
	if err ~= nil then
		log.info("Docs subsystem error: %s", err)
	end

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
			documentSymbolProvider = true,
			-- referencesProvider = true ,
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
	assert(closest, require('3rd-party.inspect')(scopes))

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

local function deduplicate_(tbl)
	local used = {}
	for i=#tbl, 1, -1 do
		if used[tbl[i]] then
			table.remove(tbl, i)
		else
			used[tbl[i]] = true
		end
	end
end

-- this is starting to get silly.
local function make_completion_items(k, val, isField, isInvoke, isVariant)
	local item = { label = k }

	if val then
		if not isVariant and val.variants then
			local items = {}
			for _, variant in ipairs(val.variants) do
				local fakeval = {}
				merge_(fakeval, val)
				fakeval.variants = nil
				merge_(fakeval, variant)
				local i = make_completion_items(k, fakeval, isField, isInvoke, true)
				table.insert(items, i[1])
			end
			return items
		end
		item.kind = isField and completionKinds.Field or completionKinds.Variable
		if val.tag == "Require" then
			-- this is a module
			item.kind = completionKinds.Module
			item.detail = ("M<%s>"):format(val.module)
		elseif val.tag == "Function" then
			-- generate function signature
			local val_is_method = false
			local sig = {}
			if val.arguments then
				for _, name in ipairs(val.arguments) do
					-- any function with at least one argument _could_ be a
					-- method
					if name.tag == "Dots" then
						table.insert(sig, "...")
					elseif isInvoke and not val_is_method then
						-- eat the first argument if it's not vararg
						val_is_method = true
					else
						local realname = name.displayName or name[1] or name.name
						assert(realname)
						table.insert(sig, realname)
					end

				end
			else
				table.insert(sig, " ??? ")
			end

			-- we still do the work associated with getting a signature,
			-- because that work informs whether or not an function is a
			-- method
			-- don't use isInvoke signatures because the builtins include the
			-- self param and we don't want to pass that in
			if val.signature and not isInvoke then
				sig = val.signature
			else
				sig = table.concat(sig, ", ")
			end

			if isInvoke and not val_is_method then
				-- don't list functions that aren't usable as methods
				return {}
			end

			local ret = ""
			if val.scope then
				local scope_mt = getmetatable(val.scope)
				if scope_mt._return then
					local sites = {}
					for _, site in ipairs(scope_mt._return) do
						local types, values, missingValues = {}, {}, false
						for _, r in ipairs(site) do
							if r.tag == "Literal" then
								local typename = ("<%s>"):format(r.tag:lower())
								table.insert(types, typename)
								table.insert(values, string.lower(r.value))
							elseif r.tag == "String" then
								table.insert(types, "<string>")
								table.insert(values, string.format("%q", r.value))
							elseif r.tag == "Id" then
								table.insert(types, r[1])
								missingValues = true
							else
								-- not useful types
								local typename = ("<%s>"):format(r.tag:lower())
								table.insert(types, typename)
								missingValues = true
							end
						end

						if missingValues then
							table.insert(sites, table.concat(types, ", "))
						else
							table.insert(sites, table.concat(values, ", "))
						end
					end
					deduplicate_(sites)
					ret = table.concat(sites, " | ")
				end
			elseif val.returns then
				ret = {}
				for _, r in ipairs(val.returns) do table.insert(ret, r.name) end
				ret = table.concat(ret, ", ")
			end

			if ret ~= "" then
				ret = string.format("-> %s", ret)
			end

			item.insertText = k
			item.label = ("%s(%s) %s"):format(k, sig, ret)
			item.documentation = val.description
			if isInvoke then
				item.kind   = completionKinds.Method
				item.detail = "<method>"
			else
				item.kind   = completionKinds.Function
				item.detail = "<function>"
			end
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
-- @input t - current scope, k - current word
-- @returns key, value, document
local function getp(doc, t, k, isDefinition)
	-- luacheck: ignore 542
	local pair = t and t[k]
	if not pair then
		log.debug("no pair for %q in %_", k, t)
		return nil
	end
	local key, value = unpack(pair)

	if isDefinition then
		return key, value, doc
	end

	if value.tag == "Require" then
		-- Resolve the return value of this module
		local moduleName = value.module

		-- [NOTE] Waiting the Document entity from this function
		local ref = assert(analyze.module(moduleName))
		doc = ref
		if ref then
			-- start at file scope
			local mt = ref.scopes and getmetatable(ref.scopes[2])
			local ret = mt and mt._return and mt._return[1][1]
			if ret and ret.tag == "Id" then
				local _
				_, value, doc = definition_of(ref, ret)
			else
				value = ret
			end
		end
	elseif value.tag == "String" then
		-- We're resolving a string as a table, this means look at the
		-- string metatable. This is encoded as looking for a global named
		-- "string", which is true in the default lua impl, but can be
		-- broken by crazy users doing setmetatable("", new_string), which we
		-- don't actually handle.
		key, value, doc = definition_of(doc, {tag="Id", "string", pos=-1})
	elseif value.tag == "Call" or value.tag == "Invoke" then
		local v
		key, v, doc = definition_of(doc, value.ref)
		if v.scope then
			local mt = v.scope and getmetatable(v.scope)
			local rets = mt and mt._return or {{}}
			--for _, ret in ipairs(rets) do
			local ret = rets[1][1]
			-- overload. FIXME: this mutates the original which does
			-- not make sense if its a copy
			if ret.scope then
				for _k, _v in pairs(v.scope) do
					ret.scope[_k] = _v
				end
			end
			-- FIXME union type
			return key, ret, doc
			--end
		elseif v.returns then
			local ret = v.returns[1]
			if ret.type == "ref" then
				local _type = Types[ret.name]
				return key, _type, doc
			end
		end
		error("call return type not understood")
	elseif value.tag == "Arg" then
		-- deref an argument
		-- we know it's a method call, deref as such
		if key[1] == "self" then
		end
	end

	return key, value, doc
end

local function nodes_to_string(id)
	if id.tag == "String" or id.tag == "Id" then
		return id[1]
	elseif id.tag == "Index" then
		assert(id[2].tag == "String")
		return nodes_to_string(id[1]) .. "." .. id[2][1]
	end
end

--- returns the definition of an expression AST or a position in a document
-- FIXME: this is real dumb, do the expression parsing someplace else and only
-- query based on AST
function definition_of(doc, id_or_pos)
	local document = analyze.document(doc)

	local word, cursor
	if id_or_pos.tag then
		local id = id_or_pos
		if (id.tag == "String" or id.tag == "Id") then
			cursor = id.pos+1
			word   = id[1]
			assert(type(word) == "string", require'inspect'(id, {depth = 3}))
		elseif id.tag == "Index" then
			cursor = id.pos+1
			word = nodes_to_string(id)
		end
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

	local symbol, val, _

	if word:find("[:.]") then
		local valdoc
		_, val, valdoc = getp(document, scope, word_start)
		local path_ids = split_path(word)

		local function follow_path(ii, _scope)
			if not _scope then
				log.fatal("not a scope: %t2", val)
			end
			local key = path_ids[ii]
			local last = ii == #path_ids

			if last then
				return getp(valdoc, _scope, key, "definition")
			else
				local _, ival, _ = getp(valdoc, _scope, key)

				if ival.tag == "Table" and ival.scope then
					return follow_path(ii+1, ival.scope)
				end
			end
		end
		symbol, val, document = follow_path(2, val.scope)
	else
		symbol, val, document = getp(document, scope, word_start, "definition")
	end

	if not symbol then
		return nil, nil, document
	end
	return symbol, val, document
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
	local word = line.text:sub(1, char-1):match("[A-Za-z_][%w_.:]*$")
	if not word then
		log.debug("%q: %_", line.text:sub(1, char-1), word)
	end

	local items = {}
	local used  = {}
	local scope = pick_scope(document.dirty, document.scopes, pos)
	if scope == nil or word == nil then
		return rpc.respond(id, {
			isIncomplete = false,
			items = {}
		})
	end
	log.debug("looking for %q in scope id %d", word, getmetatable(scope).id)

	if word:find("[:.]") then
		-- Divides by separator (ex.: ['box', 'cfg'])
		local path_ids, _ = split_path(word)
		-- path scope
		local function follow_path(ii, _scope)
			assert(_scope)
			local _iword = path_ids[ii]
			local last = ii == #path_ids
			if last then
				local is_method = not not word:find(":")
				log.debug("Is method? %_", is_method)
				for iname, _, val in iter_scope(_scope) do
					if type(iname) == "string" and
						iname:sub(1, _iword:len()) == _iword then

						local is_field = true
						local subitems = make_completion_items(iname, val, is_method, is_field)
						for _, item in ipairs(subitems) do
							table.insert(items, item)
						end
					end
				end
			else
				local node, val = getp(document, _scope, _iword)
				if node then
					if val and val.tag == "Table" then
						if val.scope then
							return follow_path(ii + 1, val.scope)
						end
					end
				end
			end
		end
		follow_path(1, scope)
	else
		-- variable scope
		for iname, node, val in iter_scope(scope) do
			if not used[iname] and (node.global or node.posEnd < pos) then
				used[iname] = true
				if iname:sub(1, word:len()) == word then
					for _, item in ipairs(make_completion_items(iname, val)) do
						table.insert(items, item)
					end
				end
			end
		end
	end

	-- local current_line = document.lines[params.position.line + 1]["text"]
	-- local left_part = current_line:sub(0, params.position.character)
	-- local last_token = left_part:match("[%w.:_]*$")
	-- if last_token then
	-- 	local raw_completions = {}
	-- 	local ADD_COMPLETION = function(cmplt)
	-- 		raw_completions[cmplt] = true
	-- 	end

	-- 	-- [?] Completion handler returns input string at the first element
	-- 	local tnt_completions = console.completion_handler(last_token, 0, last_token:len()) or {}
	-- 	local doc_completions = docs:getCompletions(last_token)
	-- 	fun.each(ADD_COMPLETION, fun.tail(tnt_completions))
	-- 	fun.each(ADD_COMPLETION, fun.remove_if(function(cmplt)
	-- 		if raw_completions[cmplt .. '('] then
	-- 			return false
	-- 		end

	-- 		return true
	-- 	end, doc_completions))

	-- 	for _, cmplt in fun.map(function(cmplt) return cmplt end, raw_completions) do
	-- 		local showedCmplt = cmplt
	-- 		local insertedCmplt = cmplt
	-- 		local cmpltKind = completionKinds["Field"]

	-- 		if cmplt:find("[(]") then
	-- 			cmpltKind = completionKinds["Function"]
	-- 			showedCmplt = cmplt:gsub("%(", "")
	-- 		end

	-- 		local doc = docs:get(showedCmplt)

	-- 		table.insert(items, {
	-- 			label = showedCmplt,
	-- 			kind = doc and doc.type or cmpltKind,
	-- 			insertText = insertedCmplt,
	-- 			documentation = doc and doc.description,
	-- 			detail = doc and doc.brief
	-- 		})
	-- 	end
	-- end

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
	log.debug("definition for %q", word)

	local symbol, _, doc2 = definition_of(params.textDocument, params.position)

	if not symbol or symbol.file == "__NONE__" then
		-- symbol not found
		log.warning("Symbol not found: %q", word)
		if symbol then
			log.warning("did find: %t", symbol)
		end
		return rpc.respond(id, json.null)
	end

	local doc = document
	if doc ~= doc2 then
		log.debug("defined in external file %q", doc2.uri)
	end

	local sub = doc2.text:sub(symbol.pos, symbol.posEnd)
	local word_end = word:match("([^.:]+)$")
	local a, b = string.find(sub, word_end, 1, true)
	log.debug("find %q in %q", word_end, sub)
	if not a then
		error(("failed to find %q in %q\nword from %q")
		:format(word_end, sub, doc2.uri))
	end
	a, b = a + symbol.pos - 1, b + symbol.pos - 1

	return rpc.respond(id, {
		uri = doc2.uri,
		range = make_range(doc2, a, b)
	})

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
	log.debug("hover for %q", word)

	local symbol, value = definition_of(params.textDocument, params.position)
	if symbol then
		local contents = {}

		local is_field = word:find("[:.]")
		local is_method = word:find(":")
		local items = make_completion_items(word, value, is_field, is_method)

		if value.tag == "Function" then
			local item = items[1]
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
	for i=1, #document.scopes do
		local scope = document.scopes[i]
		for _, pair in pairs(scope) do
			local symbol, _ = unpack(pair)
			if symbol.file ~= "__NONE__" then
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

	local format = require 'tarantool-lsp.formatting'
	local new = format.format(doc.text, {
		indent = indent,
		maxChars = 120,
	})

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
	local format = require 'tarantool-lsp.formatting'
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

method_handlers["workspace/didChangeConfiguration"] = function(params)
	assert(params.settings)
	merge_(Config, params.settings)
	log.info("Config loaded, new config: %t", Config)
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
