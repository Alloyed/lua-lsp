local mock_loop = require 'spec.mock_loop'

describe("textDocument/diagnostics", function()
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
