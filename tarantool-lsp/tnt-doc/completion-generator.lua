local fio = require('fio')
local log = require('tarantool-lsp.log')
local utils = require('tarantool-lsp.utils')
local parser = require('tarantool-lsp.tnt-doc.doc-parser')
local checks = require('checks')
local jp = require('jit.p')

local completionKinds = {
    Text = 1,
    Method = 2,
    Function = 3,
    Constructor = 4,
    Field = 5,
    Variable = 6,
    Class = 7,
    Interface = 8,
    Module = 9,
    Property = 10,
    Unit = 11,
    Value = 12,
    Enum = 13,
    Keyword = 14,
    Snippet = 15,
    Color = 16,
    File = 17,
    Reference = 18,
}

local function findKindByDigit(digit)
    for k, v in pairs(completionKinds) do
        if v == digit then
            return k
        end
    end
end

local function parseDocs(doc_path)
    local doc_dirs = {
        -- box doc's
        {
            path = fio.pathjoin(doc_path, "doc", "doc", "1.10", "book", "box"),
            name = 'box'
        },
        -- libraries docs's + some box modules
        {
            path = fio.pathjoin(doc_path, "doc", "doc", "1.10", "reference", "reference_lua"),
            name = 'libraries',
            separate = true
        }
    }

    local function basename(name)
        return name:match("^(.*)%.rst$")
    end

    local terms = {}

    for _, doc in ipairs(doc_dirs) do
        local work_dir = doc.path
        local docs = fio.glob(fio.pathjoin(work_dir, "*.rst"))

        terms[doc.name] = {}
        local termsTable = terms[doc.name]

        for _, doc_file in ipairs(docs) do
            local moduleName = basename(fio.basename(doc_file))

            if doc.separate then
                terms[doc.name][moduleName] = {}
                termsTable = terms[doc.name][moduleName]
            end

            local f = fio.open(doc_file, { 'O_RDONLY' })
            local text = f:read()
            local ok, trace = xpcall(parser.parseDocFile, debug.traceback, text, termsTable)

            f:close()
            if not ok then
                log.error("Error parse %s file. Traceback: %s. Exit...", trace, doc_file)
                os.exit(1)
            end
        end
    end

    return terms
end

local function generateCompletionFile(tnt_module)
    local output = {
        type = 'table',
        fields = {},
    }

    for k, v in pairs(tnt_module) do
        local termType = findKindByDigit(v.type):lower()
        output.fields[k] = {
            type = termType,
            argsDisplay = v.argsDisplay,
            -- TODO: Brief support
            description = v.description,
        }
    end

    return output
end

local function generateCompletions(opts)
    checks({
        bootstrap_profiler = '?string',
        doc_dir = 'string',
        completion_dir = 'string'
     })

    opts = opts or {}
    if opts.bootstrap_profiler then
        jp.start('f', '/tmp/tnt-lsp-doc-profile.txt')
    end

    local terms = parseDocs(opts.doc_dir)

    jp.stop()

    local serpent  = require('serpent')
    for name, library in pairs(terms.libraries) do
        local result = {
            type = "table",
            fields = {}
        }
        result.fields[name] = generateCompletionFile(library)

        f = io.open(opts.completion_dir .. '/' .. name .. '.lua', 'w')
        f:write("return ", serpent.block(result, {comment = false}))
        f:close()
    end
end

return {
    generate = generateCompletions
}
