#!/bin/bash

_version="$1"

if [ -z "$_version" ]; then
	echo "Version number required, format x.y.z"
	exit 1
fi

tags=$(git tag -l "v$_version")
if [ -n "${tags//}" ]; then
	echo "Tag v$_version exists"
	exit 1
fi

read -r -d '' script <<EOT
local a = "$1"
if a:match('^%d+%.%d+%.%d+-%d+') then 
	print(a)
elseif a:match('^%d+%.%d+%.%d$') then
	print(a .."-1")
else
	error('invalid argument')
end
EOT

set -e
_rspec_ver=$(lua -e "$script")
git pull

echo "::Updating to $_version, rockspec version $_rspec_ver"

echo "::Performing tests"
busted

echo "::Generating rockspec"
cd rockspecs
	luarocks new_version ../lua-lsp-scm-0.rockspec $_rspec_ver

	rspec=lua-lsp-${_rspec_ver}.rockspec
	echo "-- MOVE tag = \"v${_version}\"" >> $rspec
	$EDITOR $rspec
	luarocks lint $rspec
cd ..

echo "::Adding tag"
git tag -a "v$_version" -m "Version $_version"

echo <<END
::Done. Upload with
	git push origin master --tags
	luarocks upload \"rockspecs/${rspec}\"
::Undo with
	git reset --hard HEAD~1 && git tag -d "v$_version"
END
