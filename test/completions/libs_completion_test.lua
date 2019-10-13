local mock_loop = require('spec.mock_loop')
local test = require('luatest')

local DEFAULT_CSV_ITEMS = {
    { detail="<method>", insertText="dump", kind=2, label="dump() "},
    { detail="<method>", insertText="load", kind=2, label="load() "},
    { detail="<method>", insertText="iterate", kind=2, label="iterate() "}
}

local DEFAULT_JSON_ITEMS = {
    { detail="<method>", insertText="decode", kind=2, label="decode() "},
    { detail="<method>", insertText="encode", kind=2, label="encode() "}
}

package.loaded['tarantool-lsp.tnt-doc.doc-manager'] = {
    init = function() end,
    getInternalLibrariesList = function()
        return {
            csv = true,
            json = true
        }
    end
}

package.loaded['completions.csv'] = require('test.completions.golden_files.csv')
package.loaded['completions.json'] = require('test.completions.golden_files.json')

local function make_completion_call(before, after, position)
    local resp

    mock_loop(function(rpc)
        local doc = {
            uri = "file:///tmp/fake.lua"
        }
        rpc.notify("textDocument/didOpen", {
            textDocument = {uri = doc.uri, text = before}
        })
        rpc.notify("textDocument/didChange", {
            textDocument = {uri = doc.uri, text = after},
            contentChanges = {}
        })
        rpc.request("textDocument/completion", {
            textDocument = doc,
            position = position
        }, function(out)
            resp = out
        end)
    end)

    return resp
end

local libs_completion = test.group("libs-completion")

libs_completion.test_basic = function()
    local text = "local csv = require('csv')\n"

    local cmplt = make_completion_call(text, text .. "csv.", {line = 1, character = 4})
    test.assertEquals(cmplt, {
            isIncomplete = false,
            items = DEFAULT_CSV_ITEMS
        })
end

-- The reason of the test is 'dirty scopes'. Doesn't take account of right border of the scopes.
-- In case of file extending, we have updated right borders, which we can update manually without AST data.
--[[
    Case 1: Document was extended, current scopes are valid and new text righter that scope borders
    Case 2: Document was extended, current scopes are valid but new text placed on the any previous scope
        ```lua
        do
            local m = require('...')
        end

        c|sv.
        ```

        where | - is the right border
]]
-- libs_completion.test_closed_scope = function()
--     local text =
-- [[
-- do
--   local csv = require('csv')
-- end

-- ]]

--     local cmpltText =
-- [[
-- do
--   local csv = require('csv')
-- end

-- csv.
-- ]]
--     local cmplt = make_completion_call(text, cmpltText, {line = 4, character = 4})
--     test.assertEquals(cmplt, { isIncomplete = false, items = {} })
-- end

libs_completion.test_global_scope = function()
    local text =
[[
local csv = require('csv')
]]

    local cmpltText =
[[
local csv = require('csv')

local function abc()
  csv.
end
]]
    local cmplt = make_completion_call(text, cmpltText, {line = 3, character = 6})
    test.assertEquals(cmplt, {
        isIncomplete = false,
        items = DEFAULT_CSV_ITEMS
    })
end

libs_completion.test_local_scope = function()
    local text =
[[
local function abc()
  local csv = require('csv')
end
]]

    local cmpltText =
[[
local function abc()
  local csv = require('csv')
  csv.
end
]]

    local cmplt = make_completion_call(text, cmpltText, {line = 2, character = 6})
    test.assertEquals(cmplt, {
        isIncomplete = false,
        items = DEFAULT_CSV_ITEMS
    })
end

libs_completion.test_variable_shadowing = function()
    local text =
[[
local lib = require('csv')

do
  local lib = require('json')
end
]]

    local cmpltText =
[[
local lib = require('csv')

do
  local lib = require('json')
  lib.
end
]]
    local cmplt = make_completion_call(text, cmpltText, {line = 4, character = 6})
    test.assertEquals(cmplt, {
        isIncomplete = false,
        items = DEFAULT_JSON_ITEMS
    })
end

-- TODO: Reassignment to another variable
