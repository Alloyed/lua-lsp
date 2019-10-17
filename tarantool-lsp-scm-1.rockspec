package = "tarantool-lsp"
version = "scm-1"
-- source = {
--    url = "git://github.com/artur-barsegyan/tarantool-lsp"
-- }
-- description = {
--    homepage = "https://github.com/artur-barsegyan/tarantool-lsp",
--    license = "MIT"
-- }
dependencies = {
	"lua >= 5.1",
   "tarantool",
   "checks == 3.0.1-1"
	-- "lpeglabel ~> 1.5",
	-- "inspect ~> 3.1"
}
build = {
   type = "none",
   -- modules = {
   --    ["tarantool-lsp.analyze"] = "lua-lsp/analyze.lua",
   --    ["tarantool-lsp.data.5_1"] = "lua-lsp/data/5_1.lua",
   --    ["tarantool-lsp.data.5_2"] = "lua-lsp/data/5_2.lua",
   --    ["tarantool-lsp.data.5_3"] = "lua-lsp/data/5_3.lua",
   --    ["tarantool-lsp.data.love-completions"] = "lua-lsp/data/love-completions.lua",
   --    ["tarantool-lsp.data.luajit-2_0"] = "lua-lsp/data/luajit-2_0.lua",
   --    ["tarantool-lsp.data._test"] = "lua-lsp/data/_test.lua",
   --    ["tarantool-lsp.formatting"] = "lua-lsp/formatting.lua",
   --    ["tarantool-lsp.log"] = "lua-lsp/log.lua",
   --    ["tarantool-lsp.loop"] = "lua-lsp/loop.lua",
   --    ["tarantool-lsp.lua-parser.parser"] = "lua-lsp/lua-parser/parser.lua",
   --    ["tarantool-lsp.lua-parser.scope"] = "lua-lsp/lua-parser/scope.lua",
   --    ["tarantool-lsp.lua-parser.validator"] = "lua-lsp/lua-parser/validator.lua",
   --    ["tarantool-lsp.methods"] = "lua-lsp/methods.lua",
   --    ["tarantool-lsp.rpc"] = "lua-lsp/rpc.lua",
   --    ["tarantool-lsp.unicode"] = "lua-lsp/unicode.lua"
   -- },
   -- install = {
	  --  bin = {"bin/tarantool-lsp"}
   -- }
}
