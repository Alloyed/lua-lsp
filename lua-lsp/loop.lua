local rpc             = require 'lua-lsp.rpc'
local log             = require 'lua-lsp.log'
local method_handlers = require 'lua-lsp.methods'

_G.Documents = {}
-- selfish default
_G.Config = {
	builtins = {"5_1"},
	packagePath = {"./?.lua"},
	_useNativeLuacheck = false -- underscore means "experimental" here
}
_G.Shutdown = false
_G.Initialized = false
_G.print = function()
	error("illegal print, use log() instead:")
end

local function main(_)
	while not Shutdown do
		-- header
		local data, err = rpc.decode()
		if data == nil then
			if err == "eof" then return os.exit(1) end
			error(err)
		elseif data.method then
			-- request
			if not method_handlers[data.method] then
				log.verbose("confused by %t", data)
				err = string.format("%q: Not found/NYI", tostring(data.method))
				if data.id then
					rpc.respondError(data.id, err, "MethodNotFound")
				else
					log.warning("%s", err)
				end
			else
				local ok
				ok, err = xpcall(function()
					method_handlers[data.method](data.params, data.id)
				end, debug.traceback)
				if not ok then
					if data.id then
						rpc.respondError(data.id, err, "InternalError")
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
end

return main
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
