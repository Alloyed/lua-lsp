local mock_loop = require 'spec.mock_loop'

describe("textDocument/hover", function()
	it("handles string returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return "hi"
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> "hi"\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles number returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return 42
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> 42\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles true returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return true
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> true\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles false returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return false
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> false\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles nil returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return nil
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> nil\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles table returns #atm", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return {}
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> <table>\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles function returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return function() end
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> <function>\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles named returns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	local mystring = "hi"
	return mystring
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> mystring\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles multireturns", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	return 1, 2, 3
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> 1, 2, 3\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("handles multireturns with multiple sites", function()
		mock_loop(function(rpc)
			local text =  [[
local function myfun()
	if ok then
		return ok
	else
		return nil, "oops"
	end
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'myfun() -> ok | nil, "oops"\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("deduplicates function return names", function()
		mock_loop(function(rpc)
			local text =  [[
local function branchy()
	local myvar
	if true then
		return myvar
	else
		return myvar
	end
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'branchy() -> myvar\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)

	it("deduplicates function return literals", function()
		mock_loop(function(rpc)
			local text =  [[
local function branchy()
	local myvar
	if true then
		return "yeah"
	else
		return "yeah"
	end
	return "nah"
end
]]
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/hover", {
				textDocument = doc,
				position = {line = 0, character = 16}
			}, function(out)
				assert.same({
					contents = {'branchy() -> "yeah" | "nah"\n'}
				}, out)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)
end)
