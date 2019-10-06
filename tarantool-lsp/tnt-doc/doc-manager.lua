local http = require('http.client')
local fio = require('fio')
local log = require('tarantool-lsp.log')
local jp = require('jit.p')

local parser = require('tarantool-lsp.tnt-doc.doc-parser')

local DocumentationManager = {}

local function downloadDocs()
    local DWNLD_URL = "https://github.com/tarantool/doc/archive/1.10.zip"
    local ARCHIVE_NAME = "doc.zip"
    local response = http.get(DWNLD_URL)
    if response.status ~= 200 then
        return nil, "Can't download docs. HTTP code is " .. tostring(response.status)
    end

    local filepath = fio.pathjoin(fio.tempdir(), ARCHIVE_NAME)
    local out = fio.open(filepath, { 'O_WRONLY', 'O_CREAT' }, tonumber('777', 8))
    out:write(response.body)
    out:close()

    return filepath
end

local function extractArchive(filepath, dest_dir)
    local status = os.execute("unzip")
    if status ~= 0 then
        return nil, "Unzip isn't installed on this system"
    end

    status = os.execute(string.format("unzip %s -d %d", filepath, dest_dir))
    if status ~= 0 then
        return nil, "Can't unzip file"
    end

    return true
end

-- Parse only box.* namespace now
local function parseDocs(doc_path)
    local doc_dirs = {
        -- box doc's
        {
            path = fio.pathjoin(doc_path, "doc-1.10", "doc", "1.10", "book", "box"),
            name = 'box'
        },
        -- libraries docs's + some box modules
        {
            path = fio.pathjoin(doc_path, "doc-1.10", "doc", "1.10", "reference", "reference_lua"),
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
                -- assert(termsTable, ("%s sdsddas").format(doc_file))
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

function DocumentationManager:init(opts)
    opts = opts or {}
    if opts.bootstrap_profiler then
        jp.start('f', '/tmp/tnt-lsp-doc-profile.txt')
    end
    -- TODO: Check current revision of docs
    -- local filepath, err = downloadDocs()
    -- if err ~= nil then
    --     return nil, err
    -- end

    local filepath = "/Users/a.barsegyan/tarantool-lsp"

    -- self.doc_dir = fio.dirname(filepath)
    -- local _, err = extractArchive(filepath, self.doc_dir)
    -- if err ~= nil then
    --     return nil, err
    -- end

    self.terms = parseDocs(filepath)

    local function mergeTerms(terms, dest)
        for k, _ in pairs(terms) do
            table.insert(dest, k)
        end
    end

    local unsorted = {}
    mergeTerms(self.terms.box, unsorted)

    table.sort(unsorted)
    self.termsSorted = unsorted

    jp.stop()

    return true
end

function DocumentationManager:getCompletions(str)
    local similar = false
    local completions = {}

    local function deep_level(str)
        local lvl = 0
        for delim in str:gmatch("[.:]") do
            lvl = lvl + 1
        end

        return lvl
    end

    local str_deep_level = deep_level(str)

    local function is_completion(term)
        local is = term:match("^" .. str)
        if is then
            if str_deep_level < deep_level(term) then
                return false
            end

            return true
        end

        return false
    end

    for _, term in ipairs(self.termsSorted) do
        if is_completion(term) then
            if not similar then
                similar = true
            end

            table.insert(completions, term)
        elseif similar then
            break
        end
    end

    return completions
end

function DocumentationManager:get(term)
    return self.terms[term]
end

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

local function generateCompletionFile(tnt_module)
    local output = {
        type = 'table',
        fields = {},
    }

    for k, v in pairs(tnt_module) do
        local termType = findKindByDigit(v.type):lower()
        output.fields[k] = {
            type = termType,
            -- argsDisplay =
            -- TODO: Brief support
            description = v.brief,
            -- Hack: Current LSP support functions only with existen args field
            args = termType == 'function' and {
                {}
            }
        }
    end

    return output
end

function DocumentationManager:__generateCompletionForLibraries()
    local serpent  = require('serpent')

    for name, library in pairs(self.terms.libraries) do
        local result = {
            type = "table",
            fields = {}
        }
        result.fields[name] = generateCompletionFile(library)

        f = io.open('./tarantool-lsp/data/' .. name .. '.lua', 'w')
        f:write("return ", serpent.block(result, {comment = false}))
        f:close()
    end
end

function DocumentationManager:getInternalLibrariesList(moduleName)
    return self.terms.libraries
end

return DocumentationManager
