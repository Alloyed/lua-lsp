-- json-rpc implementation
local json    = require 'json'
local rpc = {}

function rpc.respond(id, result)
	return json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		result = result
	})
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
	if not errorMsg then
		errorMsg = "missing error message!"
	end
	local msg = json.encode({
		jsonrpc = "2.0",
		id = id or json.null,
		error = {
			code = lsp_error_codes[errorKey] or -32001,
			message = errorMsg,
			data = data
		}
	})
    return msg
end

function rpc.notify(method, params)
	return json.encode({
		jsonrpc = "2.0",
		method = method,
		params = params
	})
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
	return msg
end

function rpc.finish(data)
	-- response to server request
	local call = open_rpc[data.id]
	if call then
		call(data.result)
	end
end

return rpc
