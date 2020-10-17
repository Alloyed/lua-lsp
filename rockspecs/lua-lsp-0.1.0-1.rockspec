package = "lua-lsp"
version = "0.1.0-1"
source = {
	url = "git://github.com/Alloyed/lua-lsp",
	tag = "v0.1.0",
}
description = {
	summary = "A Language Server implementation for lua, the language",
	detailed = [[
A Language Server for Lua code, written in Lua.
It's still a work in progress, but it's usable for day-to-day. It currently
supports:

* Limited autocompletion
* Goto definition
* As you type linting and syntax checking
* Code formatting
* Supports Lua 5.1-5.3 and Luajit
   ]],
	homepage = "https://github.com/Alloyed/lua-lsp",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"dkjson ~> 2.5",
	"lpeglabel ~> 1.6",
	"inspect ~> 3.1"
}
build = {
	type = "builtin",
	modules = {
		["lua-lsp.analyze"] = "lua-lsp/analyze.lua",
		["lua-lsp.data.5_1"] = "lua-lsp/data/5_1.lua",
		["lua-lsp.data.5_2"] = "lua-lsp/data/5_2.lua",
		["lua-lsp.data.5_3"] = "lua-lsp/data/5_3.lua",
		["lua-lsp.data._test"] = "lua-lsp/data/_test.lua",
		["lua-lsp.data.love-completions"] = "lua-lsp/data/love-completions.lua",
		["lua-lsp.data.luajit-2_0"] = "lua-lsp/data/luajit-2_0.lua",
		["lua-lsp.formatting"] = "lua-lsp/formatting.lua",
		["lua-lsp.log"] = "lua-lsp/log.lua",
		["lua-lsp.loop"] = "lua-lsp/loop.lua",
		["lua-lsp.lua-parser.parser"] = "lua-lsp/lua-parser/parser.lua",
		["lua-lsp.lua-parser.scope"] = "lua-lsp/lua-parser/scope.lua",
		["lua-lsp.lua-parser.validator"] = "lua-lsp/lua-parser/validator.lua",
		["lua-lsp.methods"] = "lua-lsp/methods.lua",
		["lua-lsp.rpc"] = "lua-lsp/rpc.lua",
		["lua-lsp.unicode"] = "lua-lsp/unicode.lua"
	},
	install = {
		bin = {
			"bin/lua-lsp"
		}
	}
}
