--- This wraps over the existing lua code formatters. There's no actively
--  maintained solution that solves everyone's problems, unfortunately.

local log = require 'lua-lsp.log'

-- https://luarocks.org/modules/luarocks/formatter
local ok, formatter_or_err = pcall(require, 'formatter')

if ok then
	local formatter = formatter_or_err
	return {
		format = function(text, opts)
			return formatter.indentcode(text, "\n", true, opts.indent)
		end,
		driver = "Formatter"
	}
else
	-- No-op
	return {
		format = function(text)
			log.warning("No formatter installed!")
			return text
		end,
		driver = "noop"
	}
end
