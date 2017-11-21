#!/usr/bin/env lua

--- Takes each template and makes a require()-compatible lua file from it
--  so we can avoid wierd datafile resolving issues
local templates = {
	"https://raw.githubusercontent.com/rm-code/love-atom/master/data/love-completions.json",
	"https://raw.githubusercontent.com/dapetcu21/atom-autocomplete-lua/master/lib/stdlib/5_1.json",
	"https://raw.githubusercontent.com/dapetcu21/atom-autocomplete-lua/master/lib/stdlib/5_2.json",
	"https://raw.githubusercontent.com/dapetcu21/atom-autocomplete-lua/master/lib/stdlib/5_3.json",
	"https://raw.githubusercontent.com/dapetcu21/atom-autocomplete-lua/master/lib/stdlib/luajit-2_0.json",
}

local json = require 'dkjson'
local serpent  = require 'serpent'

local function basename(url)
	return url:match("([^/.]+).json$")
end

os.execute("sh -c 'rm -rv lua-lsp/data/*.json'")
for _, url in ipairs(templates) do
	os.execute(string.format("wget -P 'lua-lsp/data' -- %q", url))

	local path = basename(url)
	io.stderr:write("generating " .. path .. "\n")

	local f = assert(io.open("lua-lsp/data/"..path..".json"))
	local s = json.decode(f:read("*a"))
	f:close()

	f = assert(io.open("lua-lsp/data/"..path..".lua", 'w'))
	-- FIXME: ser does not produce stable results
	-- this makes git diff/blame a lot less useful, so we should switch to
	-- another loadstring compatible serializer
	f:write("return ", serpent.block(s, {comment = false}))
	f:close()
end
os.execute("sh -c 'rm -rv lua-lsp/data/*.json'")
