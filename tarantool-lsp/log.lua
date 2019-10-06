local rpc     = require 'tarantool-lsp.rpc'
local inspect = require '3rd-party.inspect'

-- Using logger wrapper for LSP server log supports
local tnt_logger = require 'log'

local log = {}

log.enabled = { default = true, verbose = true }

local function pack(...)
	return {n = select('#', ...), ...}
end

function log.fmt(s, ...)
	local args
	if type(s) == 'function' then
		args = pack(s(...))
		s = args[1]
		for i = 2, args.n do
			args[i-1] = args[i]
			if i == args.n then
				args[i] = nil
			end
		end
		args.n = args.n - 1
	else
		args = pack(...)
	end

	local i = 0
	return (string.gsub(s, "%%[A-Za-z._+$0-9]+", function(input)
		i = i + 1
		if input:match("^%%%d+%$") then
			i, input = input:match("^%%(%d+)%$(.*)$")
			i = tonumber(i)
			input = "%"..input
		end

		if input == "%_" then
			return tostring(args[i])
		elseif input:match("^%%t") then
			local t = args[i]
			local depth = input:match("^%%t(%d*)")
			depth = tonumber(depth)
			if type(t) ~= 'table' then
				return tostring(t)
			elseif t.totable then
				t = t:totable()
			end
			return inspect(t, {depth = depth})
		else
			return string.format(input, args[i])
		end
	end))
end

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
function log.info(...)
	if log.enabled.default then
		local msg = log.fmt(...)
		tnt_logger.info(msg)

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.info,
		})
	end
end

function log.warning(...)
	if log.enabled.default then
		local msg = log.fmt(...)
		tnt_logger.warn(msg)

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.warning,
		})
	end
end

function log.error(...)
	if log.enabled.default then
		local msg = log.fmt(...)
		tnt_logger.error(msg)

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.error,
		})
	end
end

function log.fatal(...)
	local msg = log.fmt(...)
	log.error("%s", msg)
	error(msg, 2)
end

function log.verbose(...)
	if log.enabled.verbose then
		local msg = log.fmt(...)
		tnt_logger.verbose(msg)

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.log,
		})
	end
end

function log.debug(...)
	if log.enabled.verbose then
		local info = debug.getinfo(2, 'lS')
		local msg = log.fmt(...)
		local pre = string.format(
			"%s:%d: ",
			info.short_src,
			info.currentline)

		tnt_logger.debug(pre, msg, "\n")

		--rpc.notify("window/logMessage", {
		--	message = msg,
		--	type = message_types.log,
		--})
	end
end
log.d = log.debug

setmetatable(log, {
	__call = function(_, ...)
		if log.enabled.verbose then
			local info = debug.getinfo(2, 'lS')
			local msg = log.fmt(...)
			local pre = string.format(
			"%s:%d: ",
			info.short_src,
			info.currentline)

			tnt_logger.verbose(pre, msg)

			--rpc.notify("window/logMessage", {
			--	message = msg,
			--	type = message_types.log,
			--})
		end
	end
})

return log
