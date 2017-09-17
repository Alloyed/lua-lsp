-- json-rpc implementation
local json    = require 'dkjson'
local rpc = {}

function rpc.respond(id, result)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		result = result
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local lsp_error_codes = {
	-- Defined by json-rpc
	ParseError           = -32700,
	InvalidRequest       = -32600,
	MethodNotFound       = -32601,
	InvalidParams        = -32602,
	InternalError        = -32603,
	serverErrorStart     = -32099,
	serverErrorEnd       = -32000,
	ServerNotInitialized = -32002,
	UnknownErrorCode     = -32001,
	-- Defined by the protocol.
	RequestCancelled     = -32800,
}

local valid_content_type = {
	["application/vscode-jsonrpc; charset=utf-8"] = true,
	-- the spec says to be lenient in this case
	["application/vscode-jsonrpc; charset=utf8"] = true
}


function rpc.respondError(id, errorMsg, errorKey, data)
	assert(errorMsg)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		error = {
			code = lsp_error_codes[errorKey] or -32001,
			message = errorMsg,
			data = data
		}
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
	io.stderr:write("Error: "..errorMsg.."\n")
end

function rpc.notify(method, params)
	local msg = json.encode({
		jsonrpc = "2.0",
		method = method,
		params = params
	})
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

local open_rpc = {}
local next_rpc_id = 0
function rpc.request(method, params, fn)
	local msg = json.encode({
		jsonrpc = "2.0",
		id = next_rpc_id,
		method = method,
		params = params
	})
	open_rpc[next_rpc_id] = fn
	next_rpc_id = next_rpc_id + 1
	io.write("Content-Length: ".. string.len(msg).."\r\n\r\n"..msg)
	io.flush()
end

function rpc.finish(data)
	-- response to server request
	local call = open_rpc[data.id]
	if call then
		call(data.result)
	end
end

function rpc.decode()
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

return rpc
