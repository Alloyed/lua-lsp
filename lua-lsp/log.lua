local rpc = require 'lua-lsp.rpc'

local log = {}

log.file = io.stderr

log.enabled = { default = false, verbose = false }

function log.setTraceLevel(trace)
	if trace == "off" then
		log.enabled = {default = false, verbose = false}
	elseif trace == "messages" then
		log.enabled = {default = true, verbose = false}
	elseif trace == "verbose" then
		log.enabled = {default = true, verbose = true}
	end
end

local message_types = { error = 1, warning = 2, info = 3, log = 4 }
function log.default(...)
	if log.enabled.default then
		local msg = string.format(...)
		log.file:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.log,
		})
	end
end

function log.verbose(...)
	if log.enabled.verbose then
		local msg = string.format(...)
		log.file:write(msg, "\n")

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

