local json   = require 'dkjson'
local parser = require 'parser'
local pp     = require 'lua-parser.pp'

local handle_request = {}

local function log(...)
	io.stderr:write("\n"..string.format(...), "\n")
end

function main(argv)
	while not Shutdown do
		-- header
		local line = io.read("*l")
		line = line:gsub("\13", "")
		while line ~= "" do
			local key, val = line:match("^([^:]+): (.+)$")
			assert(key, string.format("%q", tostring(line)))
			assert(val)
			if key == "Content-Length" then
				content_length = tonumber(val)
			elseif key == "Content-Type" then
				-- discard
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
			if not handle_request[data.method] then
				log("WARNING: %s NYI", data.method)
			else
				handle_request[data.method](data.params, data.id)
			end
		elseif data.result then
			-- response
		elseif data.error then
			-- error msg
		end
	end
end

local function respond(id, result)
	msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		result = result
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

function handle_request.initialize(params, id)
	local root  = params.rootPath or params.rootUri
	local trace = params.trace or "off"
	if params.initializationOptions then
	end
	ClientCapabilities = params.capabilities
	Initialized = true

	-- hopefully this is modest enough
	respond(id, {
		capabilities = {
			completionProvider = {
				triggerCharacters = {},
				resolveProvider = false
			}
		}
	})
end

Documents = {}

local function slurp_locals(ast)
	local scopes = {setmetatable({},{pos=0, posEnd=9999999999})}

	local dive_stat

	local function dive_expr(node, a)
		if node.tag == "Function" then
			assert(node[2].tag == "Block")
			dive_stat(node[2], a)
		elseif node.tag == "Call" then
			for _, expr in ipairs(node) do
				dive_expr(expr, a)
			end
		elseif node.tag == "Paren" then
			dive_expr(node[1], a)
		else
			--log("WARN %s", node.tag)
		end
	end

	function dive_lhs(node, a, lhs)
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
				log("found path %s", path)
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
				a[name[1]] = name.pos
			end
			if exprlist then
				for _, expr in ipairs(exprlist) do
					dive_expr(expr, a)
				end
			end
		elseif node.tag == "Localrec" then
			local id = node[1][1] -- ident
			a[id] = node[1].pos

			dive_expr(node[2][1], a)
		elseif node.tag == "Fornum" then
			for _, n in ipairs(node) do
				if n.tag == "Block" then
					dive_stat(n, a, function(next_a)
						local id = node[1][1] -- loop var
						a[id] = node[1].pos
					end)
				end
			end
		elseif node.tag == "Forin" then
			local namelist, exprlist, block = node[2], node[2], node[3]
			for _, expr in ipairs(exprlist) do
				dive_expr(expr, a)
			end
			dive_stat(block, a, function(next_a)
				for _, name in ipairs(namelist) do
					next_a[name[1]] = name.pos
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
		else
			--log("WARN %s", node.tag)
		end
	end

	dive_stat(ast, scopes[1])
	return scopes
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
	if not ast then
		log("%s", err)
	else
		document.ast = ast
		--log("%s", require'inspect'(ast))
		log("%s", pp.tostring(ast))
	end

	if document.ast then
		document.scopes = slurp_locals(document.ast)
	end
end

handle_request["textDocument/didOpen"] = function(params)
	Documents[params.textDocument.uri] = params.textDocument
	split_doc(params.textDocument)
end

handle_request["textDocument/didChange"] = function(params)
	local uri = params.textDocument.uri
	local document = Documents[uri]
	if not document then
		Documents[uri] = params.textDocument
		document = Documents[uri]
		document.text  = ""
		split_doc(params.textDocument)
	end

	for _, patch in ipairs(params.contentChanges) do
		if (patch.range == nil and patch.rangeLength == nil) then
			document.text = patch.text
			split_doc(document)
		else
			error("NYI")
			-- remove text from patch.range.start -> patch.range["end"]
			-- assert(patch.rangeLength == actual_length)
			-- then insert patch.text at origin point
		end
	end
end

handle_request["textDocument/didClose"] = function(params)
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

handle_request["textDocument/completion"] = function(params, id)
	local pos = params.position
	local document = Documents[params.textDocument.uri]
	if not document then 
		log("missing document %s", params.textDocument.uri)
		return
	end
	local line = document.lines[pos.line+1]

	local char = byte_index(line.text, pos.character+1)
	word = line.text:sub(1, char):match("[%w.:]*$")

	local items = {}
	local used  = {}
	if char then
		local realpos = line.start + char - 1
		local scope = pick_scope(document.scopes, realpos)
		while scope do
			for k, v in pairs(scope) do
				if not used[k] and v <= realpos then
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

function handle_request.shutdown(params, id)
	Shutdown = true
	respond(id, {})
end

function handle_request.exit(params)
	if Shutdown then
		os.exit(0)
	else
		os.exit(1)
	end
end

main(arg)
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
