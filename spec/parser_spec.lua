local mock_loop = require 'spec.mock_loop'
describe("lua-parser in mock loop", function()
	it("handles the empty string", function()
		mock_loop(function(rpc, s_rpc)
			spy.on(s_rpc, "notify")
			local text =  ""
			rpc.notify("textDocument/didOpen", {
				textDocument = {
					uri = "file:///tmp/fake.lua",
					text = text
				}
			})
			assert.spy(s_rpc.notify).was_called_with(
			"textDocument/publishDiagnostics", {
					diagnostics = {},
					uri = "file:///tmp/fake.lua"
			})
		end)
	end)
	it("handles functions", function()
		mock_loop(function(rpc, s_rpc)
			spy.on(s_rpc, "notify")
			local text =  "function my_fn(a, b, c) return 'str' end"
			rpc.notify("textDocument/didOpen", {
				textDocument = {
					uri = "file:///tmp/fake.lua",
					text = text
				}
			})
		end)
	end)
	it("errors on functions with extra ids", function()
		mock_loop(function(rpc, s_rpc)
			spy.on(s_rpc, "notify")
			local text = "function my_fn(a, b, c)\
				what return 'str' end\
				function a() lol_wtf() end"
			rpc.notify("textDocument/didOpen", {
				textDocument = {
					uri = "file:///tmp/fake.lua",
					text = text
				}
			})
		end)
	end)
end)

local parser = require 'tarantool-lsp.lua-parser.parser'

describe("lua-parser version differences:", function()
	it("cdata numbers", function()
		local body = [[
local cdata1 = 1LL
local cdata2 = 1ULL
local cdata3 = 0xffULL
local cdata4 = 0xffLL
]]
		assert(parser.parse(body, "out.lua", "luajit"))
		for _, v in ipairs{"5.1", "5.2", "5.3"} do
			assert.has_errors(function()
				assert(parser.parse(body, "out.lua", v))
			end)
		end
	end)

	it("bitops", function()
		local body = [[
local cdata1 = 1 | 2
local cdata2 = 1 & 2
local cdata3 = 1 ~ 2
local cdata4 = ~ 2
local cdata5 = 1 << 2
local cdata6 = 1 >> 2
]]
		assert(parser.parse(body, "out.lua", "5.3"))
		for _, v in ipairs{"5.1", "5.2", "luajit"} do
			assert.has_errors(function()
				assert(parser.parse(body, "out.lua", v))
			end)
		end
	end)

	it("floor div", function()
		local body = [[
local cdata1 = 1 // 2
]]
		assert(parser.parse(body, "out.lua", "5.3"))
		for _, v in ipairs{"5.1", "5.2", "luajit"} do
			assert.has_errors(function()
				assert(parser.parse(body, "out.lua", v))
			end)
		end
	end)

	it("goto/label", function()
		local body = [[
goto mylabel

::mylabel::
]]

		assert.has_errors(function()
			assert(parser.parse(body, "out.lua", "5.1"))
		end)

		for _, v in ipairs{"5.2", "5.3", "luajit"} do
			assert(parser.parse(body, "out.lua", v))
		end
	end)

	pending("locale/unicode", function()
	end)
	pending("string escape sequences", function()
	end)
	pending("imaginary numbers", function()
	end)
end)
