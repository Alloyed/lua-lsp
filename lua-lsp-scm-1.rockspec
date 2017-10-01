package = "lua-lsp"
version = "scm-1"
source = {
   url = "git://github.com/Alloyed/lua-lsp"
}
description = {
   homepage = "https://github.com/Alloyed/lua-lsp",
   license = "MIT"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"dkjson",
	"lpeglabel",
	"inspect"
}
build = {
   type = "builtin",
   modules = {
      ["lua-lsp.analyze"] = "lua-lsp/analyze.lua",
      ["lua-lsp.data.5_1"] = "lua-lsp/data/5_1.lua",
      ["lua-lsp.data.5_2"] = "lua-lsp/data/5_2.lua",
      ["lua-lsp.data.5_3"] = "lua-lsp/data/5_3.lua",
      ["lua-lsp.data.love-completions"] = "lua-lsp/data/love-completions.lua",
      ["lua-lsp.data.luajit-2_0"] = "lua-lsp/data/luajit-2_0.lua",
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
	   bin = {"bin/lua-lsp"}
   }
}
