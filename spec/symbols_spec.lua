local mock_loop = require 'spec.mock_loop'

describe("textDocument/documentSymbol", function()
	it("lists local variables", function()
		mock_loop(function(rpc)
			local text =  "local john, jermaine, jack"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			rpc.request("textDocument/documentSymbol", {
				textDocument = doc,
			}, function(out)
				local set = {}
				for _, o in ipairs(out) do set[o.name] = o.kind end
				assert.same({
					jack = 13,
					john = 13,
					jermaine = 13,
				}, set)
				for _, o in ipairs(out) do
					local r = o.location.range
					assert.equal(o.name, r.start and o.name)
					set[o.name] = {r.start.line, r.start.character}
				end
				assert.same({
					john = {0, 6},
					jermaine = {0, 12},
					jack = {0, 22},
				}, set)
			end)
		end)
	end)
	it("lists functions", function()
		mock_loop(function(rpc)
			local text =  "local function gem() end\
			local function jam() end\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			rpc.request("textDocument/documentSymbol", {
				textDocument = doc,
			}, function(out)
				local set = {}
				for _, o in ipairs(out) do set[o.name] = o.kind end
				assert.same({
					gem = 13,
					jam = 13,
				}, set)
				for _, o in ipairs(out) do
					local r = o.location.range
					assert.equal(o.name, r.start and o.name)
					set[o.name] = {r.start.line, r.start.character}
				end
				assert.same({
					gem = {0, 15},
					jam = {1, 18},
				}, set)
			end)
		end)
	end)
	it("lists globals", function()
		mock_loop(function(rpc)
			local text =  "gruber = 1 woah = 2 function yeah() end\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			rpc.request("textDocument/documentSymbol", {
				textDocument = doc,
			}, function(out)
				assert.not_same({}, out)
				local set = {}
				for _, o in ipairs(out) do set[o.name] = o.kind end
				assert.same({
					gruber = 13,
					woah = 13,
					yeah = 13,
				}, set)
				for _, o in ipairs(out) do
					local r = o.location.range
					assert.equal(o.name, r.start and o.name)
					set[o.name] = {r.start.line, r.start.character}
				end
				assert.same({
					gruber = {0, 0},
					woah = {0, 11},
					yeah = {0, 29},
				}, set)
			end)
		end)
	end)
end)
