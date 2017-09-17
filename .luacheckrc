std="max"

files["spec/*.lua"].std = "+busted"
files["spec/commands/*.lua"].std = "+busted"

files["rockspecs/*.rockspec"].std = "rockspec"
files["./*.rockspec"].std = "rockspec" 

include_files = {"lua-lsp", "spec", "*.rockspec"}
exclude_files = {"lua-lsp/data"}

cache = true
