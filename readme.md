# lua-lsp
[![Build Status](https://travis-ci.org/Alloyed/lua-lsp.svg)](https://travis-ci.org/Alloyed/lua-lsp)

**This is a work-in progress!**

A [Language Server][lsp] for Lua code, written in Lua.

[lsp]: https://github.com/Microsoft/language-server-protocol

### Installation/Usage

lua-lsp can be installed using luarocks:
```
$ luarocks install https://raw.githubusercontent.com/Alloyed/lua-lsp/master/lua-lsp-scm-1.rockspec
```
This will install the `lua-lsp` command. Language clients can then communicate
with this process using stdio as a transport. To do this in neovim, for
example, install [autozimu/LanguageClient-neovim][nvim] and add this to your
`init.vim`:
```
let g:LanguageClient_serverCommands = {
	\ 'lua':  ['lua-lsp'],
	\ }
```

[nvim]: https://github.com/autozimu/LanguageClient-neovim

### Features

Listed in rough priority order

* [X] Local variable completion
* [X] Table completion
* [X] Resolve `require()` modules
* [X] Diagnostics (luacheck integration)
* [X] Symbol hover
* [X] Go to definition
* [X] Document symbols
* [X] Workspace symbols
* [ ] Whitespace formatting
* [ ] List references
* [ ] ldoc integration
* [X] `.luacompleterc` integration
* [ ] Error-tolerant parsing
* [ ] Configurable transports (only stdio for now)
* [ ] Async I/O (needed for streaming/cancel support)
* [ ] Dynamic analysis (attach to running lua process)
* [ ] Alternate language support (moonscript? l2l?)
