local lsp_websocket = require('tarantool-lsp.websocket-lib')

return {
    create_websocket_handler = lsp_websocket.create_handler,
}
