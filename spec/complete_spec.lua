local mock_loop = require 'spec.mock_loop'

describe("textDocument/completion #atm", function()
	it("returns nothing with no symbols", function()
		mock_loop(function(rpc)
			local text =  "\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/completion", {
				textDocument = doc,
				position = {line = 0, character = 0}
			}, function(out)
				assert.same({
					isIncomplete = false,
					items = {}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("returns local variables", function()
		mock_loop(function(rpc)
			local text =  "local mySymbol\nreturn m"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/completion", {
				textDocument = doc,
				position = {line = 1, character = 7}
			}, function(out)
				table.sort(out.items, function(a, b)
					return a < b
				end)
				assert.same({
					isIncomplete = false,
					items = {{label = "mySymbol"}}
				}, out)
				callme = true
			end)
			assert.truthy(callme)

			callme = nil
			text = "local symbolA, symbolB\n return s"
			rpc.notify("textDocument/didChange", {
				textDocument = {uri = doc.uri},
				contentChanges = {{text = text}}
			})
			rpc.request("textDocument/completion", {
				textDocument = doc,
				position = {line = 1, character = 7}
			}, function(out)
				table.sort(out.items, function(a, b)
					return a.label < b.label
				end)
				assert.same({
					isIncomplete = false,
					items = {{label = "symbolA"},{label="symbolB"}}
				}, out)
				callme = true
			end)
			assert.truthy(callme)

			callme = nil
			text = "local symbolC \nlocal s\n local symbolD"
			rpc.notify("textDocument/didChange", {
				textDocument = {uri = doc.uri},
				contentChanges = {{text = text}}
			})
			rpc.request("textDocument/completion", {
				textDocument = doc,
				position = {line = 1, character = 6}
			}, function(out)
				table.sort(out.items, function(a, b)
					return a < b
				end)
				assert.same({
					isIncomplete = false,
					items = {{label = "symbolC"}}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)
end)
