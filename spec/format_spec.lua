local mock_loop = require 'spec.mock_loop'
local fmt = require 'lua-lsp.formatting'

local match = string.match
local function trim(s)
  return match(s,'^()%s*$') and '' or match(s,'^%s*(.*%S)')
end


describe("textDocument/formatting", function()
	if fmt.driver == "noop" then
		pending("can't run: No formatter installed", function() end)
		return
	end

	it("works", function()
		mock_loop(function(rpc)
			-- luacheck: push ignore
			local text =  [[
local function no_indent()
if great then
				print(nice)
			else
print()
end
end
]]
			local formatted = [[
local function no_indent()
    if great then
        print(nice)
    else
        print()
    end
end
]]
			-- luacheck: pop
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/formatting", {
				textDocument = doc,
				options = {tabSize = 4, insertSpaces = true}
			}, function(out)
				out = out[1]
				assert.same({
					start={line=0, character=0},
					["end"]={line=6, character=3}
				}, out.range)
				-- LCF does not do a final empty line, so trim to get rid of
				-- the difference
				formatted = trim(formatted)
				out.newText = trim(out.newText)
				assert.same(formatted, out.newText)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)
end)
describe("textDocument/rangeFormatting", function()
	if fmt.driver == "noop" then
		pending("can't run: No formatter installed", function() end)
		return
	end

	it("works", function()
		mock_loop(function(rpc)
			-- luacheck: push ignore
			local text =  [[
local function no_indent()
if great then
				print(nice)
			else
print()
end
end
]]
			local formatted = [[
local function no_indent()
    if great then
        print(nice)
]]
			-- luacheck: pop
			local doc = {
				uri = "file:///tmp/fake.lua"
			}
			rpc.notify("textDocument/didOpen", {
				textDocument = {uri = doc.uri, text = text}
			})
			local callme
			rpc.request("textDocument/rangeFormatting", {
				textDocument = doc,
				options = {tabSize = 4, insertSpaces = true},
				range = {
					start={line=0, character=0},
					["end"]={line=2, character=15}
				},
			}, function(out)
				out = out[1]
				assert.same(formatted, out.newText)
				assert.same({
					start={line=0, character=0},
					["end"]={line=2, character=15}
				}, out.range)
				callme = true
			end)
			assert.truthy(callme)
		end)
	end)
end)
