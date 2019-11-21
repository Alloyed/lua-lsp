local rpc             = require 'tarantool-lsp.rpc'
local io_loop             = require 'tarantool-lsp.io-loop'
local log             = require 'tarantool-lsp.log'
local method_handlers = require 'tarantool-lsp.methods'
local fio             = require 'fio'

local config = {
    language = "5.1",
    builtins = {"5_1"},
    packagePath = {"./?.lua"},
    documents = {},
    types = {},
    globals = nil,
    debugMode = false,
    completion_root = fio.pathjoin(_G._ROOT_PATH, 'tarantool-lsp/completions'),
    _useNativeLuacheck = false -- underscore means "experimental" here
}

_G.Types = _G.Types or {}
_G.Documents = _G.Documents or {}
_G.Globals = _G.Globals -- defined in analyze.lua
-- selfish default

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
		local data, err = io_loop.decode()
		if config.debugMode then
			reload_all()
		end

		if data == nil then
			if err == "eof" then return os.exit(1) end
			error(err)
		elseif data.method then
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
                    io.write(response)
                    io.flush()
				end, debug.traceback)
				if not ok then
					if data.id then
						local msgError = rpc.respondError(data.id, err, "InternalError")
                        io.write(msgError)
                        io.flush()
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
