local json    = require 'json'

local io_loop = {}

local valid_content_type = {
    ["application/vscode-jsonrpc; charset=utf-8"] = true,
    -- the spec says to be lenient in this case
    ["application/vscode-jsonrpc; charset=utf8"] = true
}


function io_loop.decode()
    local line = io.read("*l")
    if line == nil then
        return nil, "eof"
    end
    line = line:gsub("\13", "")
    local content_length
    while line ~= "" do
        local key, val = line:match("^([^:]+): (.+)$")
        assert(key, string.format("%q", tostring(line)))
        assert(val)
        if key == "Content-Length" then
            content_length = tonumber(val)
        elseif key == "Content-Type" then
            assert(valid_content_type[val], "Invalid Content-Type")
        else
            error("unexpected")
        end
        line = io.read("*l")
        line = line:gsub("\13", "")
    end

    -- body
    assert(content_length)
    local data = io.read(content_length)
    data = data:gsub("\13", "")
    data = assert(json.decode(data))
    assert(data["jsonrpc"] == "2.0")
    return data
end

return io_loop
