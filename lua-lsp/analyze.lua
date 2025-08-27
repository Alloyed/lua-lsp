-- Analysis engine
local parser       = require 'lua-lsp.lua-parser.parser'
local log          = require 'lua-lsp.log'
local rpc          = require 'lua-lsp.rpc'
local json         = require 'lua-lsp.json'
local ok, luacheck = pcall(require, 'luacheck')
if not ok then luacheck = nil end

local analyze = {}

local TOPLEVEL = {}
--- turn a luacomplete type into a lsp value
local function translate_luacomplete(into, data)
	local function visit_field(key, value, scope)
		local Id = {tag = "Id", key, pos=0, posEnd=0, file = "__NONE__"}
		if value.type == "table" then
			local fields
			if key == TOPLEVEL then
				fields = scope
			else
				fields = {}
				scope[key] = {Id, {
					tag = "Table",
					description = value.description,
					scope = fields
				}}
			end
			for k, v in pairs(value.fields) do
				visit_field(k, v, fields)
			end
			if value.metatable then
				visit_field(key, value.metatable.fields.__index, scope)
			end
		elseif value.type == "string" then
			scope[key] = {Id, {
					tag = "String",
					description = value.description,
					link = value.link
				}
			}
		elseif value.type == "function" then
			local variants = nil
			if value.variants then
				variants = {}
				for _, v in ipairs(value.variants) do
					table.insert(variants, {
						arguments = v.args,
						description = v.description,
						returns = v.returnTypes
					})
				end
			end
			scope[key] = {Id, {
					tag = "Function",
					description = value.description,
					arguments = value.args or {},
					signature = value.argsDisplay,
					returns   = value.returnTypes,
					variants  = variants
				}
			}
		end
	end

	visit_field(TOPLEVEL, data, into)
end

local function set(...)
	local t = {}
	for i=1, select('#', ...) do
		t[select(i, ...)] = true
	end
	return t
end

local GLOBAL_SCOPE = 1
local FILE_SCOPE   = 2

local function gen_scopes(len, ast, uri)
	if not Globals then
		-- FIXME: we need to teach the rest of the system that it's okay for a
		-- scopes to not have positions
		Globals = setmetatable({},{
			id=GLOBAL_SCOPE, pos=0, posEnd=math.huge, origin="global"
		})
		Globals._G = {{
			"_G",
			tag = "Id",
			pos = 0,
			posEnd = 0,
			file = "__NONE__",
			global = true,
		}, {
			tag = "Table",
			pos = 0,
			posEnd = 0,
			scope = Globals,
		}}
		for _, builtin in ipairs(Config.builtins) do
			local info = require('lua-lsp.data.'..builtin)
			if info.global then
				translate_luacomplete(Globals, info.global)
			end
		end

		if Config.complete and Config.complete.global then
			translate_luacomplete(Globals, Config.complete.global)
		end
	end

	local all_scopes = {
		Globals,
		setmetatable({},{
			__index = Globals, id=FILE_SCOPE,
			pos=0, posEnd=len+1, origin="file"
		}),
	}

	local visit_statement

	-- Turns an AST value into an intermediate value (which can then be stored in a scope, queried etc)
	local function clean_value(value, owning_a)
		if value == nil then
			return {tag = "None"}
		end

		local literals = set("Number", "String", "Nil", "True", "False")
		if literals[value.tag] then
			return {
				tag = value.tag == "String" and "String" or "Literal",
				pos = value.pos,
				posEnd = value.posEnd,
				file = uri,
				value = value[1] or value.tag
			}
		elseif value.tag == "Table" then
			local scope = value.scope or {}
			local sym = {
				tag = value.tag,
				pos = value.pos,
				posEnd = value.posEnd,
				file = uri,
				scope = scope,
			}
			if not getmetatable(scope) then setmetatable(scope, {}) end
			getmetatable(scope).tableSymbol = sym
			return sym
		elseif value.tag == "Call" then
			-- find require(), maybe
			if value[1].tag == "Id" then
				if value[1][1] == "require" and value[2].tag == "String" then
					return {
						tag = "Require",
						module = value[2][1]
					}
				end

				-- FIXME: we need to attach the metatable
				-- (which is value[3]) to value[2]
				if value[1][1] == "setmetatable" then
					return clean_value(value[2])
				end
			end
			-- otherwise pass call on
			return {
				tag    = value.tag,
				pos    = value.pos,
				posEnd = value.posEnd,
				file   = uri,
				ref    = value[1],
				_value = value
			}
		elseif value.tag == "Invoke" then
			-- FIXME: untested
			return {
				tag    = value.tag,
				pos    = value.pos,
				posEnd = value.posEnd,
				file   = uri,
				ref    = value[1],
				_value = value,
			}
		elseif value.tag == "Function" then
			local sym = {
				tag = value.tag,
				pos = value.pos,
				posEnd = value.posEnd,
				file = uri,
				scope = value.scope,
				arguments = value[1],
				signature = nil,
				-- used for dereferencing methods, which needs to know what object we're stored in
				parentScope = owning_a,
			}
			getmetatable(sym.scope).functionSymbol = sym
			return sym
		elseif value.tag == "Arg" then
			return {
				tag = value.tag,
				pos = value.pos,
				posEnd = value.posEnd,
				file = uri,
				functionScope = owning_a,
			}
		elseif value.tag == "Id" then
			return { value[1],
				tag = value.tag,
				pos = value.pos,
				posEnd = value.posEnd,
				file = uri,
				global = value.global,
			}
		end
		--log("unknown obj %t1", value)
		return {
			tag = "Unknown",
			orig = value
		}
	end

	local function save_arg(a, key, value)
		if key.tag == "Id" then
			assert(type(key[1]) == "string")
			assert(key.pos)

			assert(key.posEnd)

			-- It's perfectly valid to shadow argument names, only pick the last one
			a[key[1]] = {key, clean_value(value, a)}
		end
		return a
	end

	local function save_local(a, key, value)
		if key.tag == "Id" then
			assert(type(key[1]) == "string")
			assert(key.pos)

			assert(key.posEnd)

			-- This local shadows an existing local in this scope, so we
			-- need to create a new scope that represents the current scope
			-- post-shadowing
			if a[key[1]] then
				local a_mt = getmetatable(a)
				assert(a_mt.posEnd)
				local new_a = setmetatable({}, {
					__index = a,
					id = #all_scopes+1,
					pos = key.pos,
					posEnd = a_mt.posEnd
				})
				table.insert(all_scopes, new_a)
				a = new_a
			end
			a[key[1]] = {key, clean_value(value)}
		end
		return a
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
		assert(key[1])
		assert(value)
		scope[key[1]] = {key, clean_value(value, scope)}
	end

	local function save_path(a, path, value)
		local ia = a
		for i=1, #path-1 do
			local idx = path[i]
			if ia[idx[1]] then
				local v = ia[idx[1]][2]

				v.scope = v.scope or {}
				ia = v.scope
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
			-- we used to pass in nil, but I think now that wrongish or
			-- misleading type info is a good start and we can pare it back
			-- later considering we still have an unknown/None type
			--a[k][2] = clean_value(nil)
			a[k][2] = clean_value(value, a)
		else
			-- this is a new global var
			key.global = true
			key.file   = uri
			local a_global = all_scopes[GLOBAL_SCOPE]
			a_global[k] = {key, clean_value(value, a_global)}
		end
	end

	local function save_return(a, return_node)
		-- move the return value up to the closest enclosing scope
		local mt
		repeat
			if mt then a = mt.__index end
			if a == nil then return end
			mt = getmetatable(a) or {}
			setmetatable(a, mt)
		until mt.origin
		mt._return = mt._return or {}
		local cleaned_exprs = {}
		for _, return_expr in ipairs(return_node) do
			table.insert(cleaned_exprs, clean_value(return_expr))
		end
		table.insert(mt._return, cleaned_exprs)
	end

	local function visit_expression(node, a)
		if node.tag == "Function" then
			assert(node[2].tag == "Block")
			local namelist = node[1]
			visit_statement(node[2], a, function(function_a)
				getmetatable(function_a).origin = node
				node.scope = function_a
				for _, name in ipairs(namelist) do
					if name.tag == "Dots" then
						-- probably should handle this :)
						log.debug("vararg encountered")
					else
						-- when methods are defined like `function a:method()`
						-- then self param doesn't include position, presumably
						-- because it is implicit. add it back in
						if name[1] == "self" and not name.pos then
							name.pos = node.pos
							name.posEnd = node.posEnd
						end
						function_a = save_arg(function_a, name, {
							name,
							tag = "Arg",
							pos = name.pos,
							posEnd = name.posEnd,
						})
					end
				end
				return function_a
			end)
		elseif node.tag == "Call" then
			for _, expr in ipairs(node) do
				visit_expression(expr, a)
			end
		elseif node.tag == "Invoke" then
			for _, expr in ipairs(node) do
				visit_expression(expr, a)
			end
		elseif node.tag == "Paren" then
			visit_expression(node[1], a)
		elseif node.tag == "Table" then
			node.scope = node.scope or {}
			local idx = 1
			for _, inode in ipairs(node) do
				if inode.tag == "Pair" then
					local key, value = inode[1], inode[2]
					visit_expression(key, a)
					visit_expression(value, a)
					save_pair(node.scope, key, value)
				else
					local key, value = {Tag="Number", idx}, inode
					idx = idx + 1
					visit_expression(value, a)
					save_pair(node.scope, key, value)
				end
			end
		end
	end

	-- Visit an AST statement and pull out info
	-- @arg node the AST node
	-- @arg a the current scope
	-- @arg add_symbols called when a new symbol is encountered
	function visit_statement(node, a, add_symbols)
		assert(node.pos)
		assert(node.tag)
		if node.tag == "Block" or node.tag == "Do" then
			local new_a = setmetatable({}, {
				__index = a,
				id = #all_scopes+1,
				pos = node.pos,
				posEnd = node.posEnd
			})
			table.insert(all_scopes, new_a)
			if add_symbols then new_a = add_symbols(new_a) end
			for _, i in ipairs(node) do
				visit_statement(i, new_a)
			end
		elseif node.tag == "Set" then
			local namelist,exprlist = node[1], node[2]
			for i=1, math.max(#namelist, #exprlist) do
				local name, expr = namelist[i], exprlist[i]
				if expr then
					visit_expression(expr, a)
				end

				if name then
					if expr then
						save_set(a, name, expr)
					else
						-- probably a vararg
						save_set(a, name, {tag="Unknown"})
					end
				end
			end
		elseif node.tag == "Return" then
			for _, expr in ipairs(node) do
				visit_expression(expr, a)
			end
			save_return(a, node)
		elseif node.tag == "Local" then
			local namelist,exprlist = node[1], node[2]
			if exprlist then
				for _, expr in ipairs(exprlist) do
					visit_expression(expr, a)
				end
			end
			for i, name in ipairs(namelist) do
				a = save_local(a, name, exprlist and exprlist[i])
			end
		elseif node.tag == "Localrec" then
			local name, expr = node[1][1], node[2][1]
			visit_expression(expr, a)
			local _ = save_local(a, name, expr)
		elseif node.tag == "Fornum" then
			for _, n in ipairs(node) do
				if n.tag == "Block" then
					visit_statement(n, a, function(next_a)
						return save_local(next_a, node[1], {tag="Iter"})
					end)
				end
			end
		elseif node.tag == "Forin" then
			local namelist, exprlist, block = node[1], node[2], node[3]
			for _, expr in ipairs(exprlist) do
				visit_expression(expr, a)
			end
			visit_statement(block, a, function(next_a)
				for _, name in ipairs(namelist) do
					next_a = save_local(next_a, name, {tag="Iter"})
				end
				return next_a
			end)
		elseif node.tag == "While" then
			local expr, block = node[1], node[2]
			visit_expression(expr, a)
			visit_statement(block, a)
		elseif node.tag == "Repeat" then
			local block, expr = node[1], node[2]
			visit_statement(block, a)
			visit_expression(expr, a)
		elseif node.tag == "Call" then
			for _, expr in ipairs(node) do
				visit_expression(expr, a)
			end
		elseif node.tag == "If" then
			for i=1, #node, 2 do
				if node[i+1] then
					-- if/elseif block
					visit_expression(node[i], a) -- test
					visit_statement(node[i+1], a) -- body
				else
					-- else block
					visit_statement(node[i], a)
				end
			end
		elseif node.tag == "Comment" then
			log.debug("found comment <%d, %d>", node.pos, node.posEnd)
		end
	end

	visit_statement(ast, all_scopes[FILE_SCOPE])
	return all_scopes
end

local popen_cmd = "sh -c 'cd %q; luacheck %q --filename %q --formatter plain --ranges --codes'"
local message_match =  "^([^:]+):(%d+):(%d+)%-(%d+): %(W(%d+)%) (.+)"
local function try_luacheck(document)
	local diagnostics = {}
	local opts = {}
	if luacheck then
		local reports
		if Config._useNativeLuacheck == false then
			local tmpdir = os.getenv("TMPDIR") or os.getenv("TMP") or "/tmp"
			local tmp_path = tmpdir .. "/check.lua"
			local tmp = assert(io.open(tmp_path, "w"))
			tmp:write(document.text)
			tmp:close()

			local _, ce = document.uri:find(Config.root, 1, true)
			local fname = document.uri:sub((ce or -1)+2, -1):gsub("file://","")
			local root = Config.root:gsub("file://", "")
			local issues = io.popen(popen_cmd:format(root, tmp_path, fname))
			reports = {{}}
			for line in issues:lines() do
				local _, l, scol, ecol, code, msg = line:match(message_match)
				assert(tonumber(l), line)
				assert(tonumber(scol), line)
				assert(tonumber(ecol), line)
				table.insert(reports[1], {
					code = code,
					line = tonumber(l),
					column = tonumber(scol),
					end_column = tonumber(ecol),
					message = msg
				})
			end
			issues:close()
		else
			reports = luacheck.check_strings({document.text}, {opts})
		end

		for _, issue in ipairs(reports[1]) do
			-- FIXME: translate columns to characters
			table.insert(diagnostics, {
				code = issue.code,
				range = {
					start = {
						line = issue.line-1,
						character = issue.column-1
					},
					["end"] = {
						line = issue.line-1,
						character = issue.end_column
					}
				},
				-- 1 == error, 2 == warning
				severity = issue.code:find("^0") and 1 or 2,
				source   = "luacheck",
				message  = issue.message or luacheck.get_message(issue)
			})
		end
	end
	rpc.notify("textDocument/publishDiagnostics", {
		uri = document.uri,
		diagnostics = diagnostics,
	})
end

local line_mt = {
	__index = function(t, k)
		-- line.text generation is lazy because strings are expensive,
		-- relatively speaking
		if k == "text" then
			t.text = t._doc.text:sub(t.start, t["end"]):gsub("\n$", "")
			return rawget(t, "text")
		end
	end
}

-- stolen from https://rosettacode.org/wiki/Longest_common_prefix#Lua
-- probably not the fastest impl but /shrug
local function lcp(strList)
	local shortest = math.huge
	for _, str in ipairs(strList) do
		if str:len() < shortest then shortest = str:len() end
	end
	for strPos = 1, shortest do
		local first = strList[1]:sub(strPos, strPos)
		if not first then return strPos-1 end
		for listPos = 2, #strList do
			if strList[listPos]:sub(strPos, strPos) ~= first then
				return strPos-1
			end
		end
	end
	return shortest
end

function analyze.refresh(document)
	local text = document.text

	local lines = {}
	local ii = 1
	local len = text:len()
	while ii <= len do
		local pos_s, pos_e = string.find(document.text, "([^\n]*)\n?", ii)
		table.insert(lines, setmetatable({
			start = pos_s, ["end"] = pos_e, _doc = document
		}, line_mt))
		ii = pos_e + 1
	end
	document.lines = lines

	local start_time = os.clock()
	local ast, err = parser.parse(document.text, document.uri, Config.language)
	if ast then
		document.ast = ast
		document.validtext = document.text
		document.scopes = gen_scopes(#document.text, document.ast, document.uri)
		try_luacheck(document)
	else
		document.dirty = lcp{document.text, document.validtext}
		local line, column = err.line, err.column
		assert(err.line)
		return rpc.notify("textDocument/publishDiagnostics", {
			uri = document.uri,
			diagnostics = { {
				code = "011", -- this is a luacheck code
				range = {
					start   = {line = line-1, character = column-1},
					-- the parser does not keep track of the end of the error
					-- so only pass in what we know
					["end"] = {line = line-1, character = column}
				},
				-- 1 == error, 2 == warning
				severity = 1,
				source   = "parser",
				message  = err.message,
			} }
		})
		-- FIXME: in this state (aka broken) the position numbers of the old
		-- AST are out of sync with the new text object.
	end
	local path = document.uri
	local _, e = string.find(path, Config.root, 1, true)
	path = string.sub(path, (e or -1)+2, -1)
	log.verbose("%s: analyze took %f s", path, os.clock() - start_time)
end

function analyze.document(uri)
	local ref = nil
	if type(uri) == "table" then
		ref = uri
		uri = uri.uri
	end
	if Documents[uri] then
		if ref and ref.text then
			Documents[uri].text = ref.text
			analyze.refresh(Documents[uri])
		end
		return Documents[uri]
	end
	local document = ref or {}
	document.uri = uri

	if not document.text then
		local f       = assert(io.open(uri:gsub("^[^:]+://", ""), "r"))
		document.text = f:read("*a")
		f:close()
	end

	analyze.refresh(document)

	Documents[uri] = document

	return document
end

function analyze.module(mod)
	-- FIXME: load path from config file
	mod = mod:gsub("%.", "/")
	for _, template in ipairs(Config.packagePath) do
		local p = template:gsub("^%./", Config.root.."/"):gsub("?", mod)
		local uri = "file://"..p
		if Documents[uri] then
			return analyze.document(uri)
		elseif Documents[uri] ~= false then
			local f = io.open(p)
			if f then
				f:close()
				return analyze.document(uri)
			else
				-- cache missing file
				Documents[uri] = false
			end
		end
	end
	return nil, "module not found"
end

local function split_pkg_path(path)
	local path_ids = {}

	local i = 1
	while path:find(";", i) do
		local is, ie = path:find(";", i)
		table.insert(path_ids, path:sub(i, is-1))
		i = ie+1
	end
	table.insert(path_ids, path:sub(i, -1))

	for _, s in ipairs(path_ids) do
		assert(s:match("?"), "path missing '?': "..s)
	end

	return path_ids
end

local function add_types(new_types)
	for k, v in pairs(new_types) do
		Types[k] = {tag="Table", scope = {}}
		translate_luacomplete(Types[k].scope, v)
	end
end

--- load a .luacompleterc file into Config, for later use
function analyze.load_completerc(root)
	local f = io.open(root.."/.luacompleterc")
	if f then
		local s = assert(f:read("*a"))
		local data, err = json.decode(s)
		if data then
			Config.complete = data
			if data.namedTypes then
				add_types(data.namedTypes)
			end

			if data.luaVersion == "love" then
				Config.builtins = {"love-completions", "luajit-2_0"}
				Config.language = "luajit"
			elseif data.luaVersion then
				Config.builtins = {(data.luaVersion:gsub("%.","_"))}
				Config.language = data.luaVersion
				if Config.language:match("luajit") then
					Config.language = "luajit"
				end
			end

			for _, builtin in ipairs(Config.builtins) do
				local info = require('lua-lsp.data.'..builtin)
				if info.namedTypes then
					add_types(info.namedTypes)
				end
			end

			if data.packagePath then
				assert(type(data.packagePath) == "string")
				Config.packagePath = split_pkg_path(data.packagePath)
			end

			if data.cwd then
				log.error("field 'cwd' in .luacompleterc is not supported'")
			end
		else
			log.warning(".luacompleterc: %s", tostring(err))
		end
	end
end

--- Create table from vararg, skipping nil values
local function skip(...)
	local t = {}
	for i=1, select('#', ...) do
		-- nil values won't increment length
		t[#t+1] = select(i, ...)
	end
	return t
end

--- Load a .luacheckrc into Config for later use
function analyze.load_luacheckrc(root)
	if luacheck then
		local cfg = require 'luacheck.config'
		-- stack_configs is not in release builds of luacheck yet
		if cfg.stack_configs then
			local default = cfg.load_config()
			local current = cfg.load_config(root.."/.luacheckrc")
			Config.luacheckrc = cfg.stack_configs(skip(default, current))
		end
	end
end

return analyze
