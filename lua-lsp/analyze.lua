-- Analysis engine
local log          = require 'lua-lsp.log'
local rpc          = require 'lua-lsp.rpc'
local parser       = require 'lua-lsp.lua-parser.parser'
local ok, luacheck = pcall(require, 'luacheck')
if not ok then luacheck = nil end

local analyze = {}

local function slurp_locals(ast)
	local scopes = {setmetatable({},{pos=0, posEnd=9999999999, origin="file"})}

	local dive_stat

	local function clean_value(value)
		if value == nil then
			return {tag = "Unknown"}
		elseif value.tag == "Number" then
			return value
		elseif value.tag == "String" then
			return value
		elseif value.tag == "Table" then
			return value
		elseif value.tag == "Call" then
			-- find require(), maybe
			if value[1].tag == "Id" then
				if value[1][1] == "require" and value[2].tag == "String" then
					return {
						tag = "Require",
						module = value[2][1]
					}
				end
			end
		elseif value.tag == "Function" then
			return {
				tag = value.tag,
				pos = value.pos,
				posEnd = value.posEnd,
				scope = value.scope,
				[1] = value[1]
			}
		end
		return {tag = "Unknown"}
	end

	local function save_local(a, key, value)
		if key.tag == "Id" then
			assert(type(key[1]) == "string")
			assert(key.pos)
			assert(key.posEnd)
			a[key[1]] = {key, clean_value(value)}
		end
	end

	local function is_valid_path(path)
		for i, p in ipairs(path) do
			if p.tag ~= "String" and not (p.tag == "Id" and i == 1) then
				return false
			end
		end
		return true
	end

	local function make_path(key)
		local a  = {}
		local function recur(node)
			if node.tag == "Index" then
				recur(node[1])
				recur(node[2])
			else
				table.insert(a, node)
			end
		end
		recur(key)
		return a
	end

	local function save_pair(scope, key, value)
		assert(scope)
		assert(key)
		assert(key[1], require'inspect'(key))
		assert(value)
		scope[key[1]] = {key, clean_value(value)}
	end

	local function save_path(a, path, value)
		local ia = a
		for i=1, #path-1 do
			local idx = path[i]
			if ia[idx[1]] then
				local v = ia[idx[1]][2]
				if v == nil then
					return
				elseif v.tag == "Table" then
					v.scope = v.scope or {}
					ia = v.scope
				end
			end
		end
		local key = path[#path]
		save_pair(ia, key, value)
	end

	local function save_set(a, key, value)
		local k = key[1]
		if key.tag == "Index" then
			local path = make_path(key)
			if is_valid_path(path) then
				save_path(a, path, value)
			end
			return
		end

		if a[k] then
			-- this makes it much more likely that a local is going to go into
			-- unknown states during runtime
			-- NOTE: mutating like this means we change the original node
			-- instead of creating a new node. this is actually exactly what we
			-- want (dirty the old node) but it's counterintuitive
			a[k][2] = clean_value(nil)
		else
			-- this is a new global var
			scopes[1][k] = {key, clean_value(value)}
		end
	end

	local function save_return(a, expr)
		--log("save_return [%d]\t%s", getmetatable(a).id, parser.pp(expr))
		-- move the return value up to the closest enclosing scope
		local mt
		repeat
			if mt then a = mt.__index end
			if a == nil then return end
			mt = getmetatable(a) or {}
			setmetatable(a, mt)
		until mt.origin
		mt._return = mt._return or {}
		table.insert(mt._return, expr)
	end

	local function dive_expr(node, a)
		if node.tag == "Function" then
			assert(node[2].tag == "Block")
			local namelist = node[1]
			dive_stat(node[2], a, function(next_a)
				getmetatable(next_a).origin = node
				node.scope = next_a
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
		elseif node.tag == "Invoke" then
			for _, expr in ipairs(node) do
				dive_expr(expr, a)
			end
		elseif node.tag == "Paren" then
			dive_expr(node[1], a)
		elseif node.tag == "Table" then
			node.scope = node.scope or {}
			local idx = 1
			for _, inode in ipairs(node) do
				if inode.tag == "Pair" then
					local key, value = inode[1], inode[2]
					dive_expr(key, a)
					dive_expr(value, a)
					save_pair(node.scope, key, value)
				else
					local key, value = {Tag="Number", idx}, inode
					idx = idx + 1
					dive_expr(value, a)
					save_pair(node.scope, key, value)
				end
			end
		end
	end

	function dive_stat(node, a, fn)
		assert(node.pos)
		assert(node.tag)
		if node.tag == "Block" or node.tag == "Do" then
			local scope = setmetatable({}, {
				__index = a,
				id = #scopes+1,
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
			for i=1, math.max(#namelist, #exprlist) do
				local name, expr = namelist[i], exprlist[i]
				if expr then
					dive_expr(expr, a)
				end

				if name then
					if expr then
						save_set(a, name, expr)
					else
						save_set(a, name, {tag="Unknown"}) -- probably a vararg
					end
				end
			end
		elseif node.tag == "Return" then
			local exprlist = node[1]
			if exprlist and exprlist.tag then
				local expr = exprlist
				dive_expr(expr, a)
				save_return(a, expr)
			elseif exprlist then
				for _, expr in ipairs(exprlist) do
					dive_expr(expr, a)
					save_return(a, expr)
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

local luacheck_opts
local function try_luacheck(document)
	local opts = {}
	if luacheck then
		local reports = luacheck.check_strings({document.text}, {opts})
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
		local line = text:sub(pos_s, pos_e):gsub("\n$", "")
		table.insert(lines, {text = line, start = pos_s})
		ii = pos_e + 1
	end
	document.lines=lines

	local ast, err = parser.parse(document.text, document.uri)
	if ast then
		document.ast = ast
		document.scopes = slurp_locals(document.ast)
		try_luacheck(document)
	else
		local line, column = err.line, err.column
		assert(err.line, require'inspect'(err))
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
