-- luacheck: std busted
local mock_loop = require 'spec.mock_loop'
describe("lua-parser", function()
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
			assert.spy(s_rpc.notify).was_called_with("textDocument/publishDiagnostics", {
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
			--assert.is_nil(require'inspect'(Documents["file:///tmp/fake.lua"].scopes))
		end)
	end)
	it("errors on functions with extra ids #atm", function()
		mock_loop(function(rpc, s_rpc)
			spy.on(s_rpc, "notify")
			local text =  "function my_fn(a, b, c) what return 'str' end\nfunction a() lol_wtf() end"
			rpc.notify("textDocument/didOpen", {
				textDocument = {
					uri = "file:///tmp/fake.lua",
					text = text
				}
			})
			--assert.is_nil(require'inspect'(Documents["file:///tmp/fake.lua"].scopes))
		end)
	end)
end)
