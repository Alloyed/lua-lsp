local rpc = require 'rpc'

local log = {}

log.enabled = { default = true, verbose = false }

function log.setTraceLevel(trace)
	if trace == "off" then
		log.enabled = {}
	elseif trace == "messages" then
		log.enabled = {default = true, verbose = false}
	elseif trace == "verbose" then
		log.enabled.verbose = true
	end
end

local message_types = { error = 1, warning = 2, info = 3, log = 4 }
function log.default(...)
	local msg = string.format(...)
	local info = debug.getinfo(2, 'lS')
	io.stderr:write(info.short_src..":"..info.currentline..": "..msg, "\n")
	if log.enabled.default then
		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.log
		})
	end
end

function log.verbose(...)
	if log.enabled.verbose then
		local msg = string.format(...)
		io.stderr:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.log,
		})
	end
end

setmetatable(log, {
	__call = function(_, ...)
		return log.default(...)
	end
})

return log

