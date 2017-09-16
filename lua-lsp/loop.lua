local rpc             = require 'lua-lsp.rpc'
local log             = require 'lua-lsp.log'
local method_handlers = require 'lua-lsp.methods'

_G.Documents = {}
_G.Shutdown = false
_G.Initialized = false
_G.Root = nil

local function main(_)
	while not Shutdown do
		-- header
		local data, err = rpc.decode()
		if data == nil then
			if err == "eof" then return os.exit(1) end
			error(err)
		if data.method then
			-- request
			if not method_handlers[data.method] then
				log("WARNING: %s NYI", data.method)
			else
				local ok, err = xpcall(function()
					method_handlers[data.method](data.params, data.id)
				end, debug.traceback)
				if not ok then
					log("---------------------")
					log("%s", err)
					log("---------------------")
					--rpc.respondError(data.id, err, "InternalError")
				end
			end
		elseif data.result then
			rpc.finish(data)
		elseif data.error then
			log("client error:%s", data.error.message)
		end
	end
end

return main
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
