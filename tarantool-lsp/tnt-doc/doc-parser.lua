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
    local argsDisplay
    argsDisplay, scope = scope:match("%(([^\n]*)%)\n\n(.*)", ie)
    if not scope then
        return nil
    end

    -- NOTE: Scope based regexp
    local termDescription = scope:match("^(.*)\n%s*\n%s*%:%w+[%s%w%-]*%:")
    -- Temporally solution
    if not termDescription then
        termDescription = scope
    end
    termDescription = rtrim(ltrim(termDescription or ""))

    return { name = funcName, description = termDescription, type = completionKinds['Function'],
             argsDisplay = argsDisplay }
end

local function parseIndex(scope, moduleName)
    local is, ie = scope:find("%+[%=]+%+[%=]+%+\n")
    local index_rows = scope:sub(ie + 1, scope:len())
    local index = {}

    local ROW_SEPARATOR = "%+[%-]+%+[%-]+%+\n"
    local TEXT_REGEXP = "[%w.,:()%s'`+/-]+"
    local FUNC_REGEXP = "[%w._()]+"
    local ROW_REGEXP = "[%s]*%|[%s]*%:ref%:%`(" .. FUNC_REGEXP .. ")"

    local i = 1
    while true do
        local is, ie, func_name = index_rows:find(ROW_REGEXP, i)
        if not is then
            break
        end

        if moduleName and func_name:find(moduleName .. '.') == 1 then
            func_name = func_name:sub(moduleName:len() + 2)
        end

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

local function findNextTerm(text, pos, termType)
    local directives = {
        { pattern = "%.%. module%:%:", name = "module" },
        { pattern = "%.%. function%:%:", name = "function" },
    }

    local headings = {
        { pattern = "[%-]+\n[%s]+Submodule%s", name = "submodule" },
        { pattern = "[%=]+\n[%s]+Overview[%s]*\n[%=]+\n\n", name = "overview" },
        { pattern = "[%=]+\n[%s]+Index[%s]*\n[%=]+\n\n", name = "index" }
    }

    local terms = directives
    if termType == 'headings' then
        terms = headings
    end

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

local function normalizeToMarkDown(text)
    if not text then
        return nil
    end

    local REF_REGEXP = "%:ref%:`([^<]+)%s[^>]+%>%`"
    -- Normalize references
    while text:match(REF_REGEXP) do
        text = text:gsub(REF_REGEXP, "`%1`")
    end

    local CODEBLOCK_REGEXP = "%.%. code%-block%:%:%s([^\n]*)\n\n(.-)\n\n"
    while true do
        local language, code = text:match(CODEBLOCK_REGEXP)
        if not code then
            break
        end

        -- `tarantoolsession` is not supported MD code language
        language = language == 'tarantoolsession' and 'lua' or language:lower()
        text = text:gsub(CODEBLOCK_REGEXP, "```" .. language .. "\n%2\n```\n\n")
    end

    return text
end

local function truncateScope(text, startPos)
    local nextTerm = findNextTerm(text, startPos)
    local lastPos = text:len()
    if nextTerm then
        lastPos = nextTerm.pos
    end

    return text:sub(startPos, lastPos - 1)
end

local function create_if_not_exist(terms, termName, data)
    local existenTerm = terms[termName]
    if not existenTerm then
        terms[termName] = data
        existenTerm = terms[termName]

        existenTerm.name = termName
    end

    if not existenTerm.description then
        existenTerm.description = data.description
    end
    if not existenTerm.brief then
        existenTerm.brief = data.brief
    end
    existenTerm.description = normalizeToMarkDown(existenTerm.description)

    return existenTerm
end

local it = 1

local function parseHeadings(titleName, text, terms)
    local i = 1
    -- Scope for functions and other objects
    local moduleName

    while true do
        local nextTerm = findNextTerm(text, i, 'headings')
        if not nextTerm then
            break
        end

        if nextTerm.term.name == "submodule" then
            moduleName = text:match("%`([%w.]+)%`", nextTerm.pos)
            create_if_not_exist(terms, moduleName, { type = completionKinds['Module'] })
        elseif nextTerm.term.name == "overview" then
            -- TODO: Uncomment
            -- assert(moduleName ~= nil, "Module name should be setted")
            if moduleName then
                create_if_not_exist(terms, moduleName, { description = truncateScope(text, nextTerm.e_pos) })
            end
        elseif nextTerm.term.name == "index" then
            local index = parseIndex(truncateScope(text, nextTerm.e_pos), titleName)
            for func, brief_desc in pairs(index) do
                -- TODO: Maybe it's not a function...
                create_if_not_exist(terms, func, { brief = brief_desc, type = completionKinds['Function'] })
            end
        end

        i = nextTerm.e_pos + 1
    end
end

-- Parse only functions
local function parseDocFile(text, terms)


    -- Scope for functions and other objects
    local moduleName

    local i = 1
    -- local terms = {}
    while true do
        local nextTerm = findNextTerm(text, i)
        if not nextTerm then
            break
        end

        if nextTerm.term.name == "module" then
            local is, ie, mName = text:find("%.%. module%:%: ([%w.:_]*)\n", nextTerm.pos)
            moduleName = mName
            local _ = create_if_not_exist(terms, moduleName, { type = completionKinds['Module'],
                                                               description = truncateScope(text, ie + 1) })
        elseif nextTerm.term.name == "function" then
            local is, ie = text:find("%.%. function%:%:", nextTerm.pos)

            local nextNextTerm = findNextTerm(text, nextTerm.pos + 1)
            -- Skip space between directive and term name
            local scope = text:sub(ie + 2, nextNextTerm and nextNextTerm.pos or text:len())
            local term = parseFunction(scope, moduleName)

            if term then
                create_if_not_exist(terms, term.name, term)
            end
        end

        i = nextTerm.e_pos + 1
    end

    parseHeadings(moduleName, text, terms)
end

return {
    parseDocFile = parseDocFile
}
