local log = require('tarantool-lsp.log')

local function ltrim(s)
  return (s:gsub("^%s*", ""))
end

local function rtrim(s)
  local n = #s
  while n > 0 and s:find("^%s", n) do n = n - 1 end
  return s:sub(1, n)
end

local function parseFunction(scope, moduleName)
    local is, ie, termName = scope:find("^([%w.:_]+)")
    scope = scope:match("%([^\n]*%)\n\n(.*)", ie)

    -- log.info("module name = %s ----- scope: %s", moduleName, scope)
    local termDescription = scope:match("^(.*)%:%w+%:")
    -- [Temporaly solution]
    if not termDescription then
        termDescription = scope
    end
    termDescription = rtrim(ltrim(termDescription or ""))

    if moduleName and not termName:find(moduleName) then
        termName = moduleName .. '.' .. termName
    end

    return { name = termName, description = termDescription }
end

-- Parse only functions
local function parseDocFile(text, terms)
    local function findNextTerm(text, pos)
        local terms = {
            { pattern = "%.%. module%:%:", name = "module" },
            { pattern = "%.%. function%:%:", name = "function" }
        }

        local nextTerm
        for _, term in ipairs(terms) do
            local is = text:find(term.pattern, pos)
            if is then
                if not nextTerm then
                    nextTerm = { pos = is, term = term }
                else
                    if is < nextTerm.pos then
                        nextTerm = { pos = is, term = term }
                    end
                end
            end
        end

        return nextTerm
    end

    local moduleName

    local i = 1
    -- local terms = {}
    while findNextTerm(text, i) do
        local nextTerm = findNextTerm(text, i)
        if nextTerm.term.name == "module" then
            -- local is = text:find("%.%. module%:%:", nextTerm.pos)

            -- moduleName = text:match("[%w.:_]*%(", is)
            -- moduleName = moduleName:sub(0, moduleName:len() - 1)
            moduleName = text:match("%.%. module%:%: ([%w.:_]*)\n", nextTerm.pos)
        elseif nextTerm.term.name == "function" then
            local is, ie = text:find("%.%. function%:%:", nextTerm.pos)
            local nextNextTerm = findNextTerm(text, nextTerm.pos + 1)
            -- Skip space between directive and term name
            local scope = text:sub(ie + 2, nextNextTerm and nextNextTerm.pos or text:len())
            local term = parseFunction(scope, moduleName)

            terms[term.name] = term.description
        end

        i = nextTerm.pos + 1
    end
end

return {
    parseDocFile = parseDocFile
}
