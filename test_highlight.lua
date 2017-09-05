local parser = require 'parser'

local document = { uri = "test.lua" }

local f = io.open(document.uri, 'r')
document.text = assert(f:read("*a"))
f:close()

local ast = assert(parser.parse(document.text, document.uri))

local text = document.text
local highlights = {}
local function dive(node)
	for _, t in ipairs(node) do
		if type(t) == "table" then
			dive(t)
		end
	end

	if node.tag == "Id" then
		local sub = text:sub(node.pos, node.posEnd)
		print(string.format("Find %q in %q", node[1], sub))
		local a, b = string.find(sub, node[1], 1, true)
		a = a - 1
		b = b - 1
		table.insert(highlights, {node.pos+a, node.pos+b, node[1]})
	end
end

dive(ast)
table.sort(highlights, function(a, b)
	return a[1] > b[1]
end)

local splits = {}
local last_e = text:len()
for _, id in ipairs(highlights) do
	--table.insert(splits, text:sub(id[2], last_e))
	table.insert(splits, text:sub(id[1], id[2]))
	last_e = id[1]
end
--table.insert(splits, text:sub(1, last_e))

local s = {}
for i=#splits, 1, -1 do
	table.insert(s, splits[i])
end
splits = s

print(require'inspect'(splits))
