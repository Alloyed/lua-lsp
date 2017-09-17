#!/bin/sh

set -e

# check for simple luacheck errors
#luacheck .

# Check if we actually have commits to push
commits=`git log @{u}..`
if [ -z "$commits" ]; then
    exit 0
fi

# make sure project installs and loads correctly
for POST in "5.1" "5.2" ""; do
	DASH="$POST"
	if [ "$POST" != "" ]; then
		DASH="-$POST"
	fi
	eval $("luarocks$DASH" path --tree="/tmp/lua$POST")
	"luarocks$DASH" make --tree="/tmp/lua$POST"
	if [ "$POST" == "5.1" ]; then
		luajit -l lua-lsp.loop -e "os.exit(0)"
	fi
	"lua$POST" -l lua-lsp.loop -e "os.exit(0)"
	rm -rv "/tmp/lua$POST"
done
