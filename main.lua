local json   = require 'dkjson'
local parser = require 'lua-parser.parser'

local ok, luacheck = pcall(require, 'luacheck')
if not ok then luacheck = nil end

local Documents = {}
local Shutdown = false
local Initialized = false
local ClientCapabilities = false

local function respond(id, result)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		result = result
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local lsp_error_codes = {
	-- Defined by json-rpc
	ParseError           = -32700,
	InvalidRequest       = -32600,
	MethodNotFound       = -32601,
	InvalidParams        = -32602,
	InternalError        = -32603,
	serverErrorStart     = -32099,
	serverErrorEnd       = -32000,
	ServerNotInitialized = -32002,
	UnknownErrorCode     = -32001,
	-- Defined by the protocol.
	RequestCancelled     = -32800,
}

local function respondError(id, errorMsg, errorKey, data)
	assert(errorMsg)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		error = {
			code = lsp_error_codes[errorKey] or -32001,
			message = errorMsg,
			data = data
		}
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local function notify(method, params)
	local msg = json.encode({
		jsonrpc = "2.0",
		method = method,
		params = params
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local open_rpc = {}
local next_rpc_id = 0
local function request(method, params, fn)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = next_rpc_id,
		method = method,
		params = params
	})
	open_rpc[next_rpc_id] = fn
	next_rpc_id = next_rpc_id + 1
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local valid_traces = { messages = true, verbose = true}
local message_types = { error = 1, warning = 2, info = 3, log = 4 }
local function log(...)
	local msg = string.format(...)
	io.stderr:write(msg, "\n")
	if valid_traces[ClientCapabilities.trace] then
		notify("window/logMessage", {
			message = msg,
			type = message_types.log
		})
	end
end

local function verbose(...)
	if ClientCapabilities.trace == "verbose" then
		local msg = string.format(...)
		io.stderr:write(msg, "\n")

		notify("window/logMessage", {
			message = msg,
			type = message_types.log,
		})
	end
end

local method_handlers = {}

local valid_content_type = {
	["application/vscode-jsonrpc; charset=utf-8"] = true,
	["application/vscode-jsonrpc; charset=utf8"] = true
}

local function main(_)
	while not Shutdown do
		-- header
		local line = io.read("*l")
		if line == nil then
			-- EOF, shutdown
			os.exit(0)
		end
		line = line:gsub("\13", "")
		local content_length
		while line ~= "" do
			local key, val = line:match("^([^:]+): (.+)$")
			assert(key, string.format("%q", tostring(line)))
			assert(val)
			if key == "Content-Length" then
				content_length = tonumber(val)
			elseif key == "Content-Type" then
				assert(valid_content_type[val], "Invalid Content-Type")
			else
				error("unexpected")
			end
			line = io.read("*l")
			line = line:gsub("\13", "")
		end

		-- body
		-- TODO: pcall to catch errors and send them along
		assert(content_length)
		local data = io.read(content_length)
		data = data:gsub("\13", "")
		data = assert(json.decode(data))
		assert(data["jsonrpc"] == "2.0")
		if data.method then
			-- request
			if not method_handlers[data.method] then
				log("WARNING: %s NYI", data.method)
			else
				local err
				ok, err = xpcall(function()
					method_handlers[data.method](data.params, data.id)
				end, debug.traceback)
				if not ok then
					respondError(data.id, err, "InternalError")
				end
			end
		elseif data.result then
			-- response to server request
			local call = open_rpc[data.id]
			if call then
				call(data.result)
			else
				log("WARNING: Unmatched call %s", data.id)
			end
		elseif data.error then
			log("client error:%s", data.error.message)
		end
	end
end

function method_handlers.initialize(params, id)
	if Initialized then
		error("already initialized!")
	end
	local root  = params.rootPath or params.rootUri
	local trace = params.trace or "off"
	--if params.initializationOptions then
	--	-- use for server-specific config?
	--end
	ClientCapabilities = params.capabilities
	ClientCapabilities.trace = trace
	Initialized = true

	-- hopefully this is modest enough
	respond(id, {
		capabilities = {
			completionProvider = {
				triggerCharacters = {},
				resolveProvider = false
			},
			definitionProvider = true,
			--textDocumentSync = {
			--	openClose = true,
			--	change = 2, -- incremental
			--	save = { includeText = false },
			--},
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


local function slurp_locals(ast)
	local scopes = {setmetatable({},{pos=0, posEnd=9999999999})}

	local dive_stat

	local function save_local(a, symbol, node)
		assert(type(symbol) == "string", require('inspect')(symbol))
		assert(node.pos, require'inspect'(node))
		assert(node.posEnd, require 'inspect'(node))
		a[symbol] = node
	end

	local function dive_expr(node, a)
		if node.tag == "Function" then
			assert(node[2].tag == "Block")
			local namelist = node[1]
			dive_stat(node[2], a, function(next_a)
				for _, name in ipairs(namelist) do
					if name.tag ~= "Dots" then
						assert(name[1], require'inspect'(name))
						save_local(next_a, name[1], name)
					end
				end
			end)
		elseif node.tag == "Call" then
			for _, expr in ipairs(node) do
				dive_expr(expr, a)
			end
		elseif node.tag == "Paren" then
			dive_expr(node[1], a)
		end
	end

	local function dive_lhs(node, a, lhs)
		lhs = lhs or {}
		if node.tag == "Index" then
			dive_lhs(node[1], a, lhs)
			dive_lhs(node[2], a, lhs)
		elseif node.tag == "Id" then
			if #lhs == 0 then
				table.insert(lhs, node[1])
			end
		elseif node.tag == "String" then
			if #lhs ~= 0 then
				table.insert(lhs, node[1])
			end
		end

		return lhs
	end

	function dive_stat(node, a, fn)
		assert(node.pos,require'inspect'(node))
		assert(node.tag)
		if node.tag == "Block" or node.tag == "Do" then
			local scope = setmetatable({}, {
				__index = a,
				pos = node.pos,
				posEnd = node.posEnd
			})
			table.insert(scopes, scope)
			if fn then fn(scope) end
			for _, i in ipairs(node) do
				dive_stat(i, scope)
			end
		elseif node.tag == "Set" then
			local namelist,exprlist = node[1], node[2]
			for _, name in ipairs(namelist) do
				local path = dive_lhs(name, a)
				path = table.concat(path, ".")
			end
			for _, expr in ipairs(exprlist) do
				dive_expr(expr, a)
			end
		elseif node.tag == "Return" then
			local exprlist = node[1]
			if exprlist then
				for _, expr in ipairs(exprlist) do
					dive_expr(expr, a)
				end
			end
		elseif node.tag == "Local" then
			local namelist,exprlist = node[1], node[2]
			for _, name in ipairs(namelist) do
				save_local(a, name[1], name)
			end
			if exprlist then
				for _, expr in ipairs(exprlist) do
					dive_expr(expr, a)
				end
			end
		elseif node.tag == "Localrec" then
			local id = node[1][1][1] -- ident
			save_local(a, id, node[1][1])

			dive_expr(node[2][1], a)
		elseif node.tag == "Fornum" then
			for _, n in ipairs(node) do
				if n.tag == "Block" then
					dive_stat(n, a, function(next_a)
						local id = node[1][1] -- loop var
						save_local(next_a, id, node[1])
					end)
				end
			end
		elseif node.tag == "Forin" then
			local namelist, exprlist, block = node[1], node[2], node[3]
			for _, expr in ipairs(exprlist) do
				dive_expr(expr, a)
			end
			dive_stat(block, a, function(next_a)
				for _, name in ipairs(namelist) do
					save_local(next_a, name[1], name)
				end
			end)
		elseif node.tag == "While" then
			local expr, block = node[1], node[2]
			dive_expr(expr, a)
			dive_stat(block, a)
		elseif node.tag == "Repeat" then
			local block, expr = node[1], node[2]
			dive_stat(block, a)
			dive_expr(expr, a)
		elseif node.tag == "Call" then
			for _, expr in ipairs(node) do
				dive_expr(expr, a)
			end
		elseif node.tag == "If" then
			for i=1, #node, 2 do
				if node[i+1] then
					-- if/elseif block
					dive_expr(node[i], a) -- test
					dive_stat(node[i+1], a) -- body
				else
					-- else block
					dive_stat(node[i], a)
				end
			end
		end
	end

	dive_stat(ast, scopes[1])
	return scopes
end

local function try_luacheck(document)
	if luacheck then
		local reports = luacheck.check_strings({document.text}, {})
		local diagnostics = {}
		for _, issue in ipairs(reports[1]) do
			-- FIXME: translate columns to characters
			table.insert(diagnostics, {
				code = issue.code,
				range = {
					start   = {line = issue.line-1, character = issue.column-1},
					["end"] = {line = issue.line-1, character = issue.end_column-1}
				},
				-- 1 == error, 2 == warning
				severity = issue.code:find("^0") and 1 or 2,
				source   = "luacheck",
				message  = luacheck.get_message(issue)
			})
		end
		notify("textDocument/publishDiagnostics", {
			uri = document.uri,
			diagnostics = diagnostics,
		})
	end
end

local function split_doc(document)
	local text = document.text

	local lines = {}
	local ii = 1
	local len = text:len()
	while ii < len do
		local pos_s, pos_e = string.find(document.text, "([^\n]*)\n?", ii)
		table.insert(lines, {text = text:sub(pos_s, pos_e-1), start = pos_s})
		ii = pos_e + 1
	end
	document.lines=lines

	local ast, err = parser.parse(document.text, document.uri)
	if ast then
		document.ast = ast
		document.scopes = slurp_locals(document.ast)
		try_luacheck(document)
	else
		verbose("%d:%d:error: %s", err.line, err.column, err.message)
		local line, column = err.line, err.column
		notify("textDocument/publishDiagnostics", {
			uri = document.uri,
			diagnostics = { {
				--code = issue.code,
				range = {
					start   = {line = line-1, character = column-1},
					["end"] = {line = line-1, character = column}
				},
				-- 1 == error, 2 == warning
				severity = 1,
				source   = "parser",
				message  = err.message,
			} }
		})
	end
end

local function document_for(uri)
	if Documents[uri] then
		return Documents[uri]
	end
	local document = {}
	document.uri = uri

	local f = assert(io.open(uri:gsub("^[^:]://", ""), "r"))
	document.text  = f:read("*a")
	f:close()

	split_doc(document)

	Documents[uri] = document

	return document
end

method_handlers["textDocument/didOpen"] = function(params)
	Documents[params.textDocument.uri] = params.textDocument
	split_doc(params.textDocument)
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

	split_doc(document)
end

method_handlers["textDocument/didSave"] = function(params)
	local uri = params.textDocument.uri
	local document = document_for(uri)
	-- FIXME: merge in details from params.textDocument
	split_doc(document)
end

method_handlers["textDocument/didClose"] = function(params)
	Documents[params.textDocument.uri] = nil
end

local shift_6  = math.pow(2, 6)
local shift_12 = math.pow(2, 12)
local shift_18 = math.pow(2, 18)
-- the iterator is from the lua 5.3 reference manual
-- "[\0-\x7F\xC2-\xF4][\x80-\xBF]*" was the original but 5.1 doesn't
-- support hex numbers, and you can't have a \0 character in a pattern silly
local byte_seq = "[\01-\127\194-\244][\128-\191]*"

--- given a utf8 string, and a utf16 code unit index, find the equivalent byte
-- index.
local function byte_index(str, utf16)
	local byte_i = 1
	local codeunit_i  = 1

	-- this is from https://github.com/Stepets/utf8.lua/blob/master/utf8.lua
	for codepoint in str:gmatch(byte_seq) do
		local unicode
		local bytes = codepoint:len()
		if bytes == 1 then
			unicode = codepoint:byte(1)
		elseif bytes == 2 then
			local byte0,byte1 = codepoint:byte(1,2)
			local code0,code1 = byte0-0xC0,byte1-0x80
			unicode = code0*shift_6 + code1
		elseif bytes == 3 then
			local byte0,byte1,byte2 = codepoint:byte(1,3)
			local code0,code1,code2 = byte0-0xE0,byte1-0x80,byte2-0x80
			unicode = code0*shift_12 + code1*shift_6 + code2
		elseif bytes == 4 then
			local byte0,byte1,byte2,byte3 = codepoint:byte(1,4)
			local code0,code1,code2,code3 = byte0-0xF0,byte1-0x80,byte2-0x80,byte3-0x80
			unicode = code0*shift_18 + code1*shift_12 + code2*shift_6 + code3
		end

		if unicode >= 0x010000 then
			-- 2 code units
			codeunit_i = codeunit_i + 2
		else
			codeunit_i = codeunit_i + 1
		end

		byte_i = byte_i + bytes
		if codeunit_i == utf16 then
			return byte_i
		end
	end
	codeunit_i = codeunit_i + 1
	byte_i = byte_i + 1
	if codeunit_i == utf16 then
		return byte_i
	end
end

local function pick_scope(scopes, pos)
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

method_handlers["textDocument/completion"] = function(params, id)
	local pos = params.position
	local document = document_for(params.textDocument.uri)
	if not document.scopes then
		respond(id, {
			isIncomplete = false,
			items = {}
		})
	end
	local line = document.lines[pos.line+1]

	local char = byte_index(line.text, pos.character+1)
	local word = line.text:sub(1, char):match("[%w.:]*$")

	local items = {}
	local used  = {}
	if char then
		local realpos = line.start + char - 1
		local scope = pick_scope(document.scopes, realpos)
		while scope do
			for k, node in pairs(scope) do
				if not used[k] and node.pos <= realpos then
					used[k] = true
					if k:sub(1, word:len()) == word then
						table.insert(items, {label = k})
					end
				end
			end
			scope = getmetatable(scope).__index
		end
	end

	respond(id, {
		isIncomplete = false,
		items = items
	})
end

local function make_linecol(document, pos)
	local last_linepos = nil
	for i, line in ipairs(document.lines) do
		if line.start > pos then
			return i-1-1, pos - last_linepos
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
	local document = Documents[params.textDocument.uri]
	if not document then
		log("missing document %s", params.textDocument.uri)
		return
	end
	local line = document.lines[pos.line+1]

	local char = byte_index(line.text, pos.character+1)
	local word_s = line.text:sub(1, char):find("[%w.:_]*$")
	-- FIXME: this looks for the parent local, which makes sense if you're
	-- looking at a local variable, but if you want to find an actual function
	-- definition this is inconvenient
	local word = line.text:sub(word_s, -1):match("^([%a_][%w_]*)")
	log("looking for %q", word_s, word)

	local used  = {}
	if char then
		local realpos = line.start + char - 1
		local scope = pick_scope(document.scopes, realpos)
		while scope do
			for k, node in pairs(scope) do
				if not used[k] and node.pos <= realpos then
					if k == word then
						local sub = document.text:sub(node.pos, node.posEnd)
						local a, b = string.find(sub, k, 1, true)
						a, b = a + node.pos - 1, b + node.pos - 1
						log("found %q", document.text:sub(a, b))
						respond(id, {
							uri = params.textDocument.uri,
							range = make_range(document, a, b)
						})
						return
					end
				end
			end
			scope = getmetatable(scope).__index
			log("^^^")
		end
	end

	respondError(id, string.format("symbol %q not found", word))
end

function method_handlers.shutdown(_, id)
	Shutdown = true
	respond(id, {})
end

function method_handlers.exit(_)
	if Shutdown then
		os.exit(0)
	else
		os.exit(1)
	end
end

main(arg)
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
