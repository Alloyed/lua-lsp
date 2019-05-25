local unicode = require 'tarantool-lsp.unicode'

local unpack = unpack or table.unpack

local function call(fn, ...)
	local args = {...}
	return function()
		return fn(unpack(args))
	end
end

describe("utf8 bytes <-> utf16 code units", function()
	it("handles ascii", function()
		assert.equal(0, unicode.to_codeunits("jeff", 1))
		assert.equal(1, unicode.to_bytes("jeff", 0))

		assert.equal(1, unicode.to_codeunits("jeff", 2))
		assert.equal(5, unicode.to_bytes("jeff", 4))

		assert.equal(4, unicode.to_codeunits("jeff", 5))
		assert.equal(2, unicode.to_bytes("jeff", 1))

		assert.equal(1, unicode.to_codeunits("\tjeff", 2))
		assert.equal(2, unicode.to_bytes("\tjeff", 1))

		assert.has.errors(call(unicode.to_codeunits, "jeff", 100), "invalid index")
		assert.has.errors(call(unicode.to_bytes, "jeff", 100), "invalid index")

		assert.has.errors(call(unicode.to_codeunits, "jeff", 6), "invalid index")
		assert.has.errors(call(unicode.to_bytes, "jeff", 5), "invalid index")

		assert.equal(0, unicode.to_codeunits("", 1))
		assert.equal(1, unicode.to_bytes("", 0))
	end)
	it("barfs on invalid codepoints", function()
		assert.has_no.errors(call(unicode.to_codeunits, " �", 2), "invalid index")
		assert.has.errors(call(unicode.to_codeunits, " � ", 3), "invalid index")
	end)
	it("handles common languages", function()
		-- http://www.cl.cam.ac.uk/~mgk25/ucs/examples/quickbrown.txt
		local s

		s = "Quizdeltagerne spiste jordbær med fløde,"..
		" mens cirkusklovnen Wolther spillede på xylofon."
		assert.equal(85, unicode.to_codeunits(s, 89))
		assert.equal(89, unicode.to_bytes(s, 85))

		s = "Heizölrückstoßabdämpfung"
		assert.equal(23, unicode.to_codeunits(s, 28))
		assert.equal(28, unicode.to_bytes(s, 23))

		s = "Γαζέες καὶ μυρτιὲς δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο"
		assert.equal(51, unicode.to_codeunits(s, 102))
		assert.equal(102, unicode.to_bytes(s, 51))

		-- NOTE: it seems like neovim might interpret this incorrectly
		s = "いろはにほへとちりぬるを"
		assert.equal(34, unicode.to_bytes(s, 11))
		assert.equal(11, unicode.to_codeunits(s, 34))

		s = "🤔🤔🤔🤔"
		assert.equal(9, unicode.to_bytes(s, 4))
		assert.equal(4, unicode.to_codeunits(s, 9))

		s = "ℤ is the set of integers"
		assert.equal(6, unicode.to_bytes(s, 3))
		assert.equal(3, unicode.to_codeunits(s, 6))
	end)
end)
