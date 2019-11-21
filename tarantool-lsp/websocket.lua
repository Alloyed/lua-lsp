local rpc             = require 'tarantool-lsp.rpc'
local log             = require 'tarantool-lsp.log'
local method_handlers = require 'tarantool-lsp.methods'
local ws              = require 'websocket'
local json              = require 'json'
local docs 	          = require 'tarantool-lsp.tnt-doc.doc-manager'


_G.Types = _G.Types or {}
_G.Documents = _G.Documents or {}
_G.Globals = _G.Globals -- defined in analyze.lua
-- selfish default
local config = {
    language = "5.1",
    builtins = {"5_1"},
    packagePath = {"./?.lua"},
    documents = {},
    debugMode = false,
    _useNativeLuacheck = false -- underscore means "experimental" here
}
_G.Shutdown = false
_G.Initialized = _G.Initialized or false
_G.print = function()
    error("illegal print, use log() instead:", 2)
end

local function main(_)
    local ok, err = docs:init({ completions_dir = fio.pathjoin(_G._ROOT_PATH, 'completions') })
    local port = os.getenv('PORT') and tonumber(os.getenv('PORT')) or 8080

    ws.server('ws://0.0.0.0:' .. port, function (ws_peer)
        while true do
            local message, err = ws_peer:read()
            if not message or message.opcode == nil then
                break
            end
            local data = json.decode(message.data)
            if data.method then
                -- request
                if not method_handlers[data.method] then
                    -- log.verbose("confused by %t", data)
                    err = string.format("%q: Not found/NYI", tostring(data.method))
                    if data.id then
                        rpc.respondError(data.id, err, "MethodNotFound")
                    else
                        log.warning("%s", err)
                    end
                else
                    local ok
                    ok, err = xpcall(function()
                        local response = method_handlers[data.method](config, data.params, data.id)
                        ws_peer:write(response)
                    end, debug.traceback)
                    if not ok then
                        if data.id then
                            local msgError = rpc.respondError(data.id, err, "InternalError")
                            ws_peer:write(msgError)
                        else
                            log.warning("%s", tostring(err))
                        end
                    end
                end
            elseif data.result then
                rpc.finish(data)
            elseif data.error then
                log("client error:%s", data.error.message)
            end
        end
    end)
    log.verbose('start weboscket')

end

return main
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
