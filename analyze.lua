-- Analysis engine
local log = require 'log'
local rpc = require 'rpc'
local parser = require 'lua-parser.parser'
local ok, luacheck = pcall(require, 'luacheck')
if not ok then luacheck = nil end

local analyze = {}

local function slurp_locals(ast)
	local scopes = {setmetatable({},{pos=0, posEnd=9999999999})}

	local dive_stat

	local function save_local(a, key, value)
		assert(type(key[1]) == "string")
		assert(key.pos)
		assert(key.posEnd)
		a[key[1]] = {key, value}
	end

	local function dive_expr(node, a)
		if node.tag == "Function" then
			assert(node[2].tag == "Block")
			local namelist = node[1]
			dive_stat(node[2], a, function(next_a)
				for _, name in ipairs(namelist) do
					if name.tag ~= "Dots" then
						save_local(next_a, name, {Tag = "Arg"})
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
			for i, name in ipairs(namelist) do
				save_local(a, name, exprlist and exprlist[i])
			end
			if exprlist then
				for _, expr in ipairs(exprlist) do
					dive_expr(expr, a)
				end
			end
		elseif node.tag == "Localrec" then
			local name, expr = node[1][1], node[2][1]
			save_local(a, name, expr)

			dive_expr(expr, a)
		elseif node.tag == "Fornum" then
			for _, n in ipairs(node) do
				if n.tag == "Block" then
					dive_stat(n, a, function(next_a)
						save_local(next_a, node[1], {tag="Iter"})
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
					save_local(next_a, name, {tag="Iter"})
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
		rpc.notify("textDocument/publishDiagnostics", {
			uri = document.uri,
			diagnostics = diagnostics,
		})
	end
end


function analyze.document(document)
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
		log.verbose("%d:%d:error: %s", err.line, err.column, err.message)
		local line, column = err.line, err.column
		rpc.notify("textDocument/publishDiagnostics", {
			uri = document.uri,
			diagnostics = { {
				code = "011", -- this is a luacheck code
				range = {
					start   = {line = line-1, character = column-1},
					-- the parser does not keep track of the end of the error
					-- so only pass in what we know
					["end"] = {line = line-1, character = column-1}
				},
				-- 1 == error, 2 == warning
				severity = 1,
				source   = "parser",
				message  = err.message,
			} }
		})
	end
end

return analyze
