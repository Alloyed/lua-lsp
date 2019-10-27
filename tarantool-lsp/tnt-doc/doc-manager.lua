local fio = require('fio')
local log = require('tarantool-lsp.log')
local utils = require('tarantool-lsp.utils')
local completion_generator = require('tarantool-lsp.tnt-doc.completion-generator')
local checks = require('checks')

local DocumentationManager = {}

function DocumentationManager.initDoc(opts)
    checks({
        doc_dir = 'string',
        completion_dir = 'string'
    })

    local git = utils.which('git')
    if git == nil then
        return nil, "Error! You need to install 'git' for docs initializing."
    end

    if not fio.path.exists(opts.doc_dir) then
        local ok, err = fio.mkdir(opts.doc_dir, tonumber(777, 8))
        if not ok then
            return nil, ("Can't create directory %s for doc: %s").format(opts.doc_dir, err)
        end
    end

    local res, err = utils.exec_call("cd %q && %s clone %s .", opts.doc_dir, git, "https://github.com/tarantool/doc.git")
    if not res then
        return nil, err
    end

    completion_generator.generate(opts)

    return true
end

function DocumentationManager.updateDoc(opts)
    checks({
        doc_dir = 'string',
        completion_dir = 'string'
    })

    local git = utils.which('git')
    if git == nil then
        return nil, "Error! You need to install 'git' for docs updating."
    end

    local res, err = utils.exec_call("cd %q && %s pull", opts.doc_dir, git)
    if not res then
        return nil, err
    end

    completion_generator.generate(opts)

    return true
end

function DocumentationManager:getInternalLibrariesList(moduleName)
    return self.libraries
end

function DocumentationManager:init(opts)
    checks('table', { completions_dir = 'string' })

    if not fio.path.exists(opts.completions_dir) then
        return nil, "Completion directory isn't exist"
    end

    self.libraries = {}

    local cmpltFiles = fio.glob(fio.pathjoin(opts.completions_dir, '*.lua'))
    for _, libname in ipairs(cmpltFiles) do
         libname = fio.basename(libname)
         libname = libname:gsub("%.lua", "")

        self.libraries[libname] = true
    end

    return true
end

return DocumentationManager
