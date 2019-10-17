local fio = require('fio')

local function is_executable(path)
    local S_IEXEC = 64
    return bit.band(fio.stat(path).mode, S_IEXEC) ~= 0
end

local function which(binary)
    for _, path in ipairs(string.split(os.getenv("PATH"), ':') or {}) do
        for _, file in ipairs(fio.listdir(path) or {}) do
            local full_path = fio.pathjoin(path, file)
            if file == binary and
                fio.path.exists(full_path) and
                fio.path.is_file(full_path) and
                is_executable(full_path) then
                    return full_path
            end
        end
    end
end

local function call(command, ...)
    local res, err = io.popen(string.format(command, ...))

    if res == nil then
        return nil, ("Failed to execute '%s': %s").format(command, err)
    end

    local result = res:read("*all")
    return result
end

return {
    exec_call = call,
    which = which
}
