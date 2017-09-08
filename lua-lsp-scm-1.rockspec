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
	"lpeglabel"
}
build = {
   type = "builtin",
   modules = {
      ["lua-lsp.analyze"] = "lua-lsp/analyze.lua",
      ["lua-lsp.log"] = "lua-lsp/log.lua",
      ["lua-lsp.lua-parser.parser"] = "lua-lsp/lua-parser/parser.lua",
      ["lua-lsp.lua-parser.pp"] = "lua-lsp/lua-parser/pp.lua",
      ["lua-lsp.lua-parser.scope"] = "lua-lsp/lua-parser/scope.lua",
      ["lua-lsp.lua-parser.validator"] = "lua-lsp/lua-parser/validator.lua",
      ["lua-lsp.rpc"] = "lua-lsp/rpc.lua",
      ["lua-lsp.unicode"] = "lua-lsp/unicode.lua",
      ["lua-lsp"] = "lua-lsp.lua",
   },
   install = {
	   bin = {"bin/lua-lsp"}
   },
}
