local mock_loop = require 'spec.mock_loop'

describe("textDocument/diagnostics", function()
	it("sends an empty array in response to no issues", function()
		mock_loop(function(rpc, s_rpc)
			local text = ""
			local doc = {
				uri = "file:///tmp/emptyarray.lua"
			}
			spy.on(s_rpc, "notifyJson")
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			assert.spy(s_rpc.notifyJson).was_called_with(
			"textDocument/publishDiagnostics",
			[[{"uri":"file:\/\/\/tmp\/emptyarray.lua","diagnostics":[]}]])
		end)
	end)
	it("lists local variables", function()
		mock_loop(function(rpc)
			local text =  "local john, jermaine, jack\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
		end)
	end)
end)
