local rpc             = require 'tarantool-lsp.rpc'
local log             = require 'tarantool-lsp.log'
local method_handlers = require 'tarantool-lsp.methods'

_G.Types = _G.Types or {}
_G.Documents = _G.Documents or {}
_G.Globals = _G.Globals -- defined in analyze.lua
-- selfish default
_G.Config = _G.Config or {
	language = "5.1",
	builtins = {"5_1"},
	packagePath = {"./?.lua"},
	debugMode = false,
	_useNativeLuacheck = false -- underscore means "experimental" here
}
_G.Shutdown = false
_G.Initialized = _G.Initialized or false
_G.print = function()
	error("illegal print, use log() instead:", 2)
end

local function reload_all()
	for name, _ in pairs(package.loaded) do
		if name:find("^lua%-lsp") and name ~= 'tarantool-lsp.log' then
			package.loaded[name] = nil
		end
	end
	log.verbose("===========================")
	method_handlers = require 'tarantool-lsp.methods'
end

local function main(_)
	while not Shutdown do
		-- header
		local data, err = rpc.decode()
		if _G.Config.debugMode then
			reload_all()
		end

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

	os.exit(0)
end

return main
--https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol
