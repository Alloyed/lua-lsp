
return function(fn)
	local unpack  = table.unpack or unpack
	_G.Documents = {}
	_G.Shutdown = false
	_G.Initialized = false
	_G.Root = nil

	local s_rpc = {}
	package.loaded['lua-lsp.rpc'] = s_rpc
	function s_rpc.respond(id, result)
		Args = {{id=id, result = result}}
	end
	function s_rpc.respondError(id, errorMsg, errorKey, data)
		error(string.format("respondError %s: %s ", id, errorMsg))
	end
	function s_rpc.notify(...)
		--error(string.format("%s"))
		-- throw away notifications: TODO: add busted watcher
		--error()
	end
	function s_rpc.request()
		error()
	end
	function s_rpc.finish()
	end
	local method_handlers = require 'lua-lsp.methods'

	local c_rpc = {next_id = 0}
	function c_rpc.respond(_, _)
		error()
	end
	function c_rpc.respondError()
		error("unhandled error")
	end
	function c_rpc.notify(method, params)
		coroutine.yield({method = method, params = params})
	end
	function c_rpc.request(method, params, req_fn)
		local req = coroutine.yield({method = method, params = params, id = c_rpc.next_id})
		assert(c_rpc.next_id == req.id)
		assert(req.error == nil)
		req_fn(req.result)
		c_rpc.next_id = c_rpc.next_id  + 1
	end
	local co = coroutine.create(function()
		c_rpc.request("initialize", {
			rootPath = "/",
		}, function() end)
		return fn(c_rpc, s_rpc)
	end)
	_G.Args = {}

	while not Shutdown and coroutine.status(co) ~= 'dead' do
		local ok, data = coroutine.resume(co, unpack(Args))
		assert(ok == true, "co: "..tostring(data))
		if data == nil then -- end
			Shutdown = true
		elseif data.method then
			-- request
			assert(method_handlers[data.method])
			method_handlers[data.method](data.params, data.id)
		elseif data.result then
			s_rpc.finish(data)
		elseif data.error then
			error()
		end
	end
end

