-- unicode-based utilities
-- these are hard-adapted to the needs of lua-lsp, sorry
--

local unicode = {}

local shift_6  = math.pow(2, 6)
local shift_12 = math.pow(2, 12)
local shift_18 = math.pow(2, 18)
-- The iterator is from the lua 5.3 reference manual:
-- "[\0-\x7F\xC2-\xF4][\x80-\xBF]*"
-- modifications are to keep 5.1-3 compat.
local patt
if setfenv then -- lua5.1 compat
	patt = "[%z\01-\127\194-\244][\128-\191]*"
else
	patt = "[\0-\127\194-\244][\128-\191]*"
end

--- given a utf8 string, and a utf16 code unit index (0-indexed), find the
--  equivalent byte index (1-indexed)
function unicode.to_bytes(str, utf16)
	local byte_i = 0
	local codeunit_i  = -1

	assert(utf16 >= 0, "indexes start at 0")
	if utf16 == 0 then return 1 end -- special case, empty strings

	-- this is from https://github.com/Stepets/utf8.lua/blob/master/utf8.lua
	local codepoint, bytes = 0, 1
	for byte_seq in str:gmatch(patt) do
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

		bytes = byte_seq:len()
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
			local b0,b1,b2,b3 = byte_seq:byte(1,4)
			local code0,code1,code2,code3 = b0-0xF0,b1-0x80,b2-0x80,b3-0x80
			codepoint = code0*shift_18 + code1*shift_12 + code2*shift_6 + code3
		end
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
	error("invalid index")
end

-- note: byte_index is 1-indexed, return value is 0-indexed
function unicode.to_codeunits(str, byte_index)
	local byte_i = 0
	local codeunit_i  = -1

	assert(byte_index > 0, "indexes start at 1")
	if byte_index == 1 then return 0 end -- special case, empty strings

	-- this is from https://github.com/Stepets/utf8.lua/blob/master/utf8.lua
	local codepoint, bytes = 0, 1
	for byte_seq in str:gmatch(patt) do
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

		bytes = byte_seq:len()
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
			local b0,b1,b2,b3 = byte_seq:byte(1,4)
			local code0,code1,code2,code3 = b0-0xF0,b1-0x80,b2-0x80,b3-0x80
			codepoint = code0*shift_18 + code1*shift_12 + code2*shift_6 + code3
		end
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
	error("invalid index")
end

return unicode
