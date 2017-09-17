#!/bin/sh

set -e

# check for simple luacheck errors
#luacheck .

# Check if we actually have commits to push
commits=`git log @{u}..`
if [ -z "$commits" ]; then
    exit 0
fi

LUAROCKS="luarocks-5.1"
LUA="luajit"
TREE="/tmp/lsptest"
eval $($LUAROCKS path --tree="$TREE")
$LUAROCKS make --tree="$TREE"
$LUA -l lua-lsp.loop -e "os.exit(0)"
rm -rv "$TREE"
