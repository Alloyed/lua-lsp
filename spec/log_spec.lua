-- luacheck: ignore 122
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
	it("handles functions #atm", function()
		assert.equal("12 nil",
		log.fmt(function()
			return "%2$d %1$_", nil, 12
		end))
	end)
end)

describe("log levels", function()
	it("can disable logging", function()
		log.setTraceLevel("off")
		log.file = {write = function() end}
		io.write = log.file.write
		stub(log.file, "write")

		log("a")
		log.debug("b")
		log.info("c")
		log.warning("d")
		log.error("e")

		assert.stub(log.file.write).was_not.called()
	end)

	it("can only print important messages", function()
		log.setTraceLevel("messages")
		log.file = {write = function() end}
		io.write = log.file.write
		stub(log.file, "write")

		log("a")
		assert.stub(log.file.write).was_not.called()

		log.debug("b")
		assert.stub(log.file.write).was_not.called()

		log.info("c")
		assert.stub(log.file.write).was.called()
		log.file.write:clear()

		log.warning("d")
		assert.stub(log.file.write).was.called()
		log.file.write:clear()

		log.error("e")
		assert.stub(log.file.write).was.called()
		log.file.write:clear()
	end)

	it("can print all messages", function()
		log.setTraceLevel("verbose")
		log.file = {write = function() end}
		io.write = log.file.write
		stub(log.file, "write")

		log("a")
		log.debug("b")
		log.info("c")
		log.warning("d")
		log.error("e")

		assert.stub(log.file.write).was.called(5)
	end)
end)
