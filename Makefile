
tarantool-lsp/completions: tarantool-lsp/current-tag-doc
	./gen_completion.sh

all: tarantool-lsp/completions

install:
	mkdir -p $(INST_LUADIR)/tarantool-lsp/completions
	cp -r tarantool-lsp/completions/* $(INST_LUADIR)/tarantool-lsp/completions/
