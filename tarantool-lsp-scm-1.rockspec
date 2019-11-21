package = "tarantool-lsp"
version = "scm-1"
source = {
  url = "git://github.com/tarantool/lua-lsp"
}
description = {
  homepage = "https://github.com/tarantool/lua-lsp",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "tarantool",
  "checks == 3.0.1-1",
  "websocket ~> 0.0.2-1",
  "lpeglabel == 1.5.0-1",
}
build = {
  type = 'make',
  build_target = 'all',
  install = {
    lua = {
      ["tarantool-lsp.analyze"] = "tarantool-lsp/analyze.lua",
      ["tarantool-lsp.formatting"] = "tarantool-lsp/formatting.lua",
      ["tarantool-lsp.log"] = "tarantool-lsp/log.lua",
      ["tarantool-lsp.loop"] = "tarantool-lsp/loop.lua",
      ["tarantool-lsp.io-loop"] = "tarantool-lsp/io-loop.lua",
      ["tarantool-lsp.lua-parser.parser"] = "tarantool-lsp/lua-parser/parser.lua",
      ["tarantool-lsp.lua-parser.scope"] = "tarantool-lsp/lua-parser/scope.lua",
      ["tarantool-lsp.lua-parser.validator"] = "tarantool-lsp/lua-parser/validator.lua",
      ["tarantool-lsp.tnt-doc.completion-generator"] = "tarantool-lsp/tnt-doc/completion-generator.lua",
      ["tarantool-lsp.tnt-doc.doc-manager"] = "tarantool-lsp/tnt-doc/doc-manager.lua",
      ["tarantool-lsp.tnt-doc.doc-parser"] = "tarantool-lsp/tnt-doc/doc-parser.lua",
      ["tarantool-lsp.methods"] = "tarantool-lsp/methods.lua",
      ["tarantool-lsp.rpc"] = "tarantool-lsp/rpc.lua",
      ["tarantool-lsp.websocket"] = "tarantool-lsp/websocket.lua",
      ["tarantool-lsp.websocket-lib"] = "tarantool-lsp/websocket-lib.lua",
      ["tarantool-lsp.unicode"] = "tarantool-lsp/unicode.lua",
      ["tarantool-lsp.utils"] = "tarantool-lsp/utils.lua",
      ["tarantool-lsp.inspect"] = "tarantool-lsp/inspect.lua",
      ["tarantool-lsp.data.5_1"] = "tarantool-lsp/data/5_1.lua",
      ["tarantool-lsp"] = "tarantool-lsp.lua"
    }
  },
  build_variables = {
    version = 'scm-1',
  },
  install_variables = {
    -- Installs lua module:
    -- ['cluster.front-bundle']
    INST_LUADIR="$(LUADIR)",
  },
}
