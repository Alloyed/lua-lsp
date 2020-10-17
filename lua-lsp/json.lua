-- wrapper for lua implementations
local ok, maybe_cjson = pcall(require, 'cjson')
if ok then
	return maybe_cjson
end

return require('dkjson')
