local rpc     = require 'lua-lsp.rpc'
local inspect = require 'inspect'

local log = {}

log.file = io.stderr

log.enabled = { default = false, verbose = false }

local function pack(...)
	return {n = select('#', ...), ...}
end

local function fmt(s, ...)
	local args
	if type(s) == 'function' then
		args = pack(s(...))
		s = table.remove(args, 1)
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
		elseif input == "%t" then
			local t = args[i]
			if type(t) ~= 'table' then
				return tostring(t)
			elseif t.totable then
				t = t:totable()
			end
			return inspect(t)
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
		local msg = fmt(...)
		log.file:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.info,
		})
	end
end

function log.warning(...)
	if log.enabled.default then
		local msg = fmt(...)
		log.file:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.warning,
		})
	end
end

function log.error(...)
	if log.enabled.default then
		local msg = fmt(...)
		log.file:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.error,
		})
	end
end

function log.verbose(...)
	if log.enabled.verbose then
		local msg = fmt(...)
		log.file:write(msg, "\n")

		rpc.notify("window/logMessage", {
			message = msg,
			type = message_types.log,
		})
	end
end

function log.debug(...)
	if log.enabled.verbose then
		local info = debug.getinfo(2, 'S')
		local msg = fmt(...)
		local pre = string.format(
			"%s:%d: ",
			info.short_src,
			info.linedefined)

		log.file:write(pre, msg, "\n")

		--rpc.notify("window/logMessage", {
		--	message = msg,
		--	type = message_types.log,
		--})
	end
end

setmetatable(log, {
	__call = function(_, ...)
		if log.enabled.verbose then
			local info = debug.getinfo(2, 'S')
			local msg = fmt(...)
			local pre = string.format(
			"%s:%d: ",
			info.short_src,
			info.linedefined)

			log.file:write(pre, msg, "\n")

			--rpc.notify("window/logMessage", {
			--	message = msg,
			--	type = message_types.log,
			--})
		end
	end
})

return log

