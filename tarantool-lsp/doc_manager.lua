local http = require('http.client')
local fio = require('fio')
local log = require('tarantool-lsp.log')

local parser = require('tarantool-lsp.doc-parser')

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
    local work_dir = fio.pathjoin(doc_path, "doc-1.10", "doc", "1.10", "book", "box")
    local docs = fio.glob(fio.pathjoin(work_dir, "*.rst"))

    local terms = {}
    for _, doc_file in ipairs(docs) do
        local f = fio.open(doc_file, { 'O_RDONLY' })
        local text = f:read()
        parser.parseDocFile(text, terms)

        f:close()
    end

    return terms
end

function DocumentationManager:init()
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
    return true
end

function DocumentationManager:get(term)
    return self.terms[term]
end

return DocumentationManager
