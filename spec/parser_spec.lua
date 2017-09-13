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
end)
