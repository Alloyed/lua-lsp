-- unicode-based utilities
-- these are hard-adapted to the needs of lua-lsp, sorry
--

local unicode = {}

local shift_6  = math.pow(2, 6)
local shift_12 = math.pow(2, 12)
local shift_18 = math.pow(2, 18)
-- the iterator is from the lua 5.3 reference manual
-- "[\0-\x7F\xC2-\xF4][\x80-\xBF]*" was the original but 5.1 doesn't
-- support hex numbers, and you can't have a \0 character in a pattern silly
local patt = "[\01-\127\194-\244][\128-\191]*"

--- given a utf8 string, and a utf16 code unit index (0-indexed), find the
--  equivalent byte index (1-indexed)
function unicode.to_bytes(str, utf16)
	local byte_i = 1
	local codeunit_i  = 0

	if codeunit_i == utf16 then
		return byte_i
	end

	-- this is from https://github.com/Stepets/utf8.lua/blob/master/utf8.lua
	for byte_seq in str:gmatch(patt) do
		local codepoint
		local bytes = byte_seq:len()
		if bytes == 1 then
			codepoint = byte_seq:byte(1)
		elseif bytes == 2 then
			local byte0,byte1 = byte_seq:byte(1,2)
			local code0,code1 = byte0-0xC0,byte1-0x80
			codepoint = code0*shift_6 + code1
		elseif bytes == 3 then
			local byte0,byte1,byte2 = byte_seq:byte(1,3)
			local code0,code1,code2 = byte0-0xE0,byte1-0x80,byte2-0x80
			codepoint = code0*shift_12 + code1*shift_6 + code2
		elseif bytes == 4 then
			local byte0,byte1,byte2,byte3 = byte_seq:byte(1,4)
			local code0,code1,code2,code3 = byte0-0xF0,byte1-0x80,byte2-0x80,byte3-0x80
			codepoint = code0*shift_18 + code1*shift_12 + code2*shift_6 + code3
		end

		if codepoint >= 0x010000 then
			-- 2 code units
			codeunit_i = codeunit_i + 2
		else
			codeunit_i = codeunit_i + 1
		end

		byte_i = byte_i + bytes
		if codeunit_i == utf16 then
			return byte_i
		end
	end
	codeunit_i = codeunit_i + 1
	byte_i = byte_i + 1
	if codeunit_i == utf16 then
		return byte_i
	end
	error(string.format("invalid index %d for %q", utf16, str))
end

-- note: byte_index is 1-indexed, return value is 0-indexed
function unicode.to_codeunits(str, byte_index)
	local byte_i = 1
	local codeunit_i  = 0

	if byte_i == byte_index then
		return codeunit_i
	end

	-- this is from https://github.com/Stepets/utf8.lua/blob/master/utf8.lua
	for byte_seq in str:gmatch(patt) do
		local codepoint
		local bytes = byte_seq:len()
		if bytes == 1 then
			codepoint = byte_seq:byte(1)
		elseif bytes == 2 then
			local byte0,byte1 = byte_seq:byte(1,2)
			local code0,code1 = byte0-0xC0,byte1-0x80
			codepoint = code0*shift_6 + code1
		elseif bytes == 3 then
			local byte0,byte1,byte2 = byte_seq:byte(1,3)
			local code0,code1,code2 = byte0-0xE0,byte1-0x80,byte2-0x80
			codepoint = code0*shift_12 + code1*shift_6 + code2
		elseif bytes == 4 then
			local byte0,byte1,byte2,byte3 = byte_seq:byte(1,4)
			local code0,code1,code2,code3 = byte0-0xF0,byte1-0x80,byte2-0x80,byte3-0x80
			codepoint = code0*shift_18 + code1*shift_12 + code2*shift_6 + code3
		end

		if codepoint >= 0x010000 then
			-- 2 code units
			codeunit_i = codeunit_i + 2
		else
			codeunit_i = codeunit_i + 1
		end

		byte_i = byte_i + bytes
		if byte_i == byte_index then
			return codeunit_i
		end
	end
	codeunit_i = codeunit_i + 1
	byte_i = byte_i + 1
	if byte_i == byte_index then
		return codeunit_i
	end
	error("invalid index")
end

return unicode
