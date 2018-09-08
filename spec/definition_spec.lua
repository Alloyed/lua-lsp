local mock_loop = require 'spec.mock_loop'

local function not_empty(t)
	assert.not_same({}, t)
end

describe("textDocument/didOpen", function()
	it("triggers", function()
		mock_loop(function(rpc, s_rpc)
			spy.on(s_rpc, "notify")
			local methods = require 'lua-lsp.methods'
			local opened = spy.on(methods, "textDocument/didOpen")
			local text =  "local jeff = nil \n return jeff"
			rpc.notify("textDocument/didOpen", {
				textDocument = {
					uri = "file:///tmp/fake.lua",
					text = text
				}
			})
			assert.truthy(Documents)
			assert.truthy(Documents["file:///tmp/fake.lua"])
			assert.spy(s_rpc.notify).was_called()
			assert.spy(opened).was_called()
			assert.equal(text, Documents["file:///tmp/fake.lua"].text)
		end)
	end)
end)

describe("textDocument/definition", function()
	it("returns a definition", function()
		mock_loop(function(rpc)
			local text =  "local jeff = nil \n return jeff\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = { line = 1, character = 8}
			}, function()
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("returns a definition near EOF", function()
		-- is the last character in the file next to the EOF marker? aka, no
		-- trailing newline
		mock_loop(function(rpc)
			local text =  "local jeff = nil \n return jeff"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = { line = 1, character = 8}
			}, function()
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles multiple symbols #tmp", function()
		mock_loop(function(rpc)
			local text =  "local jack\nlocal diane\n return jack, diane\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 2, character = 8} -- jack
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=6}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 2, character = 14} -- diane
			}, function(out)
				not_empty(out)
				assert.same({line=1, character=6}, out.range.start)
			end)
		end)
	end)

	it("handles symbol redefinition", function()
		mock_loop(function(rpc)
			-- This should return the first jack on line 1 and the second jack
			-- on line 3. This means there is an implicit scope-within-a-scope
			-- we need to implement
			local text =  "local jack\njack()\nlocal jack\n return jack\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 3, character = 8} -- jackv2
			}, function(out)
				not_empty(out)
				assert.same({line=2, character=6}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 0} -- jackv1
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=6}, out.range.start)
			end)
		end)
	end)

	it("handles field definition", function()
		mock_loop(function(rpc)
			local text =  [[
local jack = { diane = 1 }
jack.jill = 2
return jack.diane + jack.jill
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line=2, character=12} -- jack.diane
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=15}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 2, character = 25} -- jack.jill
			}, function(out)
				not_empty(out)
				assert.same({line=1, character=5}, out.range.start)
			end)
		end)
	end)

	it("handles function fields", function()
		mock_loop(function(rpc)
			local text =  [[
local jack = { diane = function() end }
function jack.jill() return end
function jack:little_ditty() return end
return jack.diane() + jack.jill() + jack:little_ditty()
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line=3, character=12} -- jack.diane
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=15}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 3, character = 27} -- jack.jill
			}, function(out)
				assert.same({line=1, character=14}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line=3, character=41} -- jack:little_ditty
			}, function(out)
				not_empty(out)
				assert.same({line=2, character=14}, out.range.start)
			end)
		end)
	end)


	it("handles wide characters", function()
		mock_loop(function(rpc)
			local text = "a='😬' local jeff\n return jeff\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 8} -- jackv2
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=13}, out.range.start)
			end)
		end)
	end)

	it("handles tabs", function()
		mock_loop(function(rpc)
			local text = "\tlocal jeff\n return jeff\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 8} -- jackv2
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=7}, out.range.start)
			end)
		end)
	end)

	it("handles multivars", function()
		mock_loop(function(rpc)
			local text = "local jack, diane = 1, 2\nprint(diane)\nreturn jack\n"
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 8} -- diane
			}, function(out)
				assert.same({line=0, character=12}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 2, character = 8} -- jackv2
			}, function(out)
				not_empty(out)
				assert.same({line=0, character=6}, out.range.start)
			end)
		end)
	end)

	it("handles document jumping", function()
		mock_loop(function(rpc)
			local text = [[
local a = {}
a.jeff = 1
return a
]]
			local doc = {
				uri = "file:///tmp/fake1.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			text = [[
local a = require'fake1'
return a.jeff
]]
			local doc1 = doc
			doc = {
				uri = "file:///tmp/fake2.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 10} -- a.jeff
			}, function(out)
				assert.equal(doc1.uri, out.uri)
				assert.same({line=1, character=2}, out.range.start)
			end)

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 8} -- a
			}, function(out)
				assert.equal(doc.uri, out.uri)
				assert.same({line=0, character=6}, out.range.start)
			end)
		end)
	end)

	it("handles missing documents ", function()
		mock_loop(function(rpc)
			local text = [[
local a = require'fake1'
return a.jeff
]]
			local doc = {
				uri = "file:///tmp/fake2.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})

			--[[ FIXME: This currently produces an error, which is bad.
			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 10} -- a.jeff
			}, function(out)
				assert.equal(doc1.uri, out.uri)
				assert.same({line=1, character=2}, out.range.start)
			end)
			--]]

			rpc.request("textDocument/definition", {
				textDocument = doc,
				position = {line = 1, character = 8} -- a
			}, function(out)
				assert.equal(doc.uri, out.uri)
				assert.same({line=0, character=6}, out.range.start)
			end)
		end)
	end)
end)
