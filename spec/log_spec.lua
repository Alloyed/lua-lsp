local log = require 'lua-lsp.log'

describe("log.fmt", function()
	it("handles %_", function()
		assert.equal("strong",
		log.fmt("%_", "strong"))

		assert.equal("nil",
		log.fmt("%_", nil))

		local t1, t2 = {}, {}
		assert.equal(tostring(t1) .. " " .. tostring(t2),
		log.fmt("%_ %_", t1, t2))
	end)
	it("handles %t", function()
		assert.equal('{ "a", "b", "c" }',
		log.fmt("%t", {"a", "b", "c"}))

		assert.equal('{ 1,\n  <metatable> = {}\n} { 2 }',
		log.fmt("%t %t", setmetatable({1}, {}), {2}))
	end)
	it("handles numeric args", function()
		assert.equal("12 nil",
		log.fmt("%2$d %1$_", nil, 12))

		local t = {"okay"}
		assert.equal('{ "okay" } '..tostring(t),
		log.fmt("%1$t %1$_", t))
	end)
end)
