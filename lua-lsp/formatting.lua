--- This wraps over the existing lua code formatters. There's no actively
--  maintained solution that solves everyone's problems, unfortunately.

local log = require 'lua-lsp.log'

local drivers = {}

-- https://luarocks.org/modules/luarocks/formatter
drivers['formatter'] = function(formatter)
	return {
		format = function(text, opts)
			return formatter.indentcode(text, "\n", true, opts.indent)
		end,
		driver = "Formatter"
	}
end

-- https://github.com/martin-eden/lua_code_formatter
drivers['lcf.workshop.base'] = function()
	-- luacheck: globals request
	local get_ast = request('!.lua.code.get_ast')
	local get_formatted_code = request('!.lua.code.ast_as_code')
	return {
		format = function(text, opts)
			return get_formatted_code(get_ast(text), {
				indent_chunk = opts.indent,
			})
		end,
		driver = "lcf"
	}
end

-- No-op
local noDriver = {
	format = function(text)
		log.warning("No formatter installed!")
		return text
	end,
	driver = "noop"
}

for mod, driver in pairs(drivers) do
	local ok, m_or_err = pcall(require, mod)
	if ok then
		return driver(m_or_err)
	end
end

return noDriver
