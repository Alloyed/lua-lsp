local log = require('tarantool-lsp.log')

local function ltrim(s)
  return (s:gsub("^%s*", ""))
end

local function rtrim(s)
  local n = #s
  while n > 0 and s:find("^%s", n) do n = n - 1 end
  return s:sub(1, n)
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

local function parseFunction(scope, moduleName)
    local is, ie, funcName = scope:find("^([%w.:_]+)")
    scope = scope:match("%([^\n]*%)\n\n(.*)", ie)

    local termDescription = scope:match("^(.*)\n%s*\n%s*%:%w+[%s%w%-]*%:")
    -- Temporaly solution
    if not termDescription then
        termDescription = scope
    end
    termDescription = rtrim(ltrim(termDescription or ""))

    if moduleName and not funcName:find(moduleName) then
        funcName = moduleName .. '.' .. funcName
    end

    return { name = funcName, description = termDescription, type = completionKinds['Function'] }
end

local function parseIndex(scope)
    local is, ie = scope:find("%+[%=]+%+[%=]+%+\n")
    local index_rows = scope:sub(ie + 1, scope:len())

    local index = {}
    local ROW_SEPARATOR = "%+[%-]+%+[%-]+%+\n"
    local TEXT_REGEXP = "[%w.,:()%s'`+/-]+"
    local FUNC_REGEXP = "[%w.()]+"
    -- local WORD_REGEXP = "[%w.,:()'`+/-]+"
    -- local SENTENCE_REGEXP = "[" .. WORD_REGEXP .. "%s?]*"
    local FUNC_REGEXP = "[%w._()]+"
    local ROW_REGEXP = "[%s]*%|[%s]*%:ref%:%`(" .. FUNC_REGEXP .. ")"

    local i = 1
    while index_rows:find(ROW_REGEXP, i) do
        local is, ie, func_name = index_rows:find(ROW_REGEXP, i)
        local row_dump = index_rows:sub(ie + 1, index_rows:find(ROW_SEPARATOR, ie + 1))

        local desc = ""
        for desc_row in row_dump:gmatch("[^\n][%s]*%|[%s]*(" .. TEXT_REGEXP .. ")%|\n") do
            desc = desc .. desc_row
        end

        index[func_name:gsub("%(%)", "")] = rtrim(desc):gsub("[%s]+", " ")
        i = ie + 1
    end

    return index
end

-- Parse only functions
local function parseDocFile(text, terms)
    local function findNextTerm(text, pos)
        local terms = {
            -- Directives
            { pattern = "%.%. module%:%:", name = "module" },
            { pattern = "%.%. function%:%:", name = "function" },

            -- Headings
            { pattern = "[%-]+\n[%s]+Submodule%s", name = "submodule" },
            { pattern = "[%=]+\n[%s]+Overview[%s]*\n[%=]+\n\n", name = "overview" },
            { pattern = "[%=]+\n[%s]+Index[%s]*\n[%=]+\n\n", name = "index" }
        }

        local nextTerm
        for _, term in ipairs(terms) do
            local is, ie = text:find(term.pattern, pos)
            if is then
                if not nextTerm then
                    nextTerm = { pos = is, term = term, e_pos = ie }
                else
                    if is < nextTerm.pos then
                        nextTerm = { pos = is, term = term, e_pos = ie }
                    end
                end
            end
        end

        return nextTerm
    end

    local function truncateScope(text, startPos)
        local nextTerm = findNextTerm(text, startPos)
        local lastPos = text:len()
        if nextTerm then
            lastPos = nextTerm.pos
        end

        return text:sub(startPos, lastPos - 1)
    end

    -- Scope for functions and other objects
    local moduleName

    local i = 1
    -- local terms = {}
    while findNextTerm(text, i) do
        local nextTerm = findNextTerm(text, i)
        local nextNextTerm = findNextTerm(text, nextTerm.pos + 1)

        if nextTerm.term.name == "module" then
            local is, ie, moduleName = text:find("%.%. module%:%: ([%w.:_]*)\n", nextTerm.pos)
            local currentModule = terms[moduleName]
            if not currentModule then
                terms[moduleName] = { name = moduleName, type = completionKinds['Module'] }
                currentModule = terms[moduleName]
            end

            if not currentModule.description then
                currentModule.description = truncateScope(text, ie + 1)
            end
        elseif nextTerm.term.name == "function" then
            local is, ie = text:find("%.%. function%:%:", nextTerm.pos)

            -- Skip space between directive and term name
            local scope = text:sub(ie + 2, nextNextTerm and nextNextTerm.pos or text:len())
            local term = parseFunction(scope, moduleName)

            if terms[term.name] then
                terms[term.name].description = term.description
            else
                terms[term.name] = term
            end
        elseif nextTerm.term.name == "submodule" then
            moduleName = text:match("%`([%w.]+)%`", nextTerm.pos) -- Remained part [%s]*\n[%-]+\n
            terms[moduleName] = { name = moduleName, type = completionKinds['Module'] }
        elseif nextTerm.term.name == "overview" then
            -- TODO: Uncomment
            -- assert(moduleName ~= nil, "Module name should be setted")
            if moduleName then
                local currentModule = terms[moduleName]
                if not currentModule then
                    terms[moduleName] = { name = moduleName }
                    currentModule = terms[moduleName]
                end
                currentModule.description = truncateScope(text, nextTerm.e_pos)
            end
        elseif nextTerm.term.name == "index" then
            local index = parseIndex(truncateScope(text, nextTerm.e_pos))
            for func, desc in pairs(index) do
                local term = terms[func]
                if not term then
                    -- TODO: Maybe it's not a function...
                    terms[func] = { name = func, type = completionKinds['Function'] }
                    term = terms[func]
                end

                term.brief = desc
            end
        end

        i = nextTerm.pos + 1
    end
end

return {
    parseDocFile = parseDocFile
}
