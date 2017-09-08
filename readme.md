# lua-lsp

**This is a work-in progress!**

A [Language Server Protocol](https://github.com/Microsoft/language-server-protocol) server for Lua code, written in Lua.

### Capabilities

Listed in rough priority order

* [X] Local variable completion
* [ ] Module/table completion
* [X] Diagnostics (luacheck integration)
* [ ] Docstrings/Function signatures (ldoc integration)
* [X] Go to definition
* [ ] Workspace symbols
* [ ] List references
* [ ] Configurable transports (only stdio for now)
* [ ] Async I/O (needed for higher level features)
* [ ] Dynamic analysis (attach to running lua process)

### Installation/Usage

lua-lsp can be installed using luarocks:
```
$ luarocks install <rockspec>
```
This will install the `lua-lsp` command. Language clients can then communicate
with this process using stdio as a transport. To do this in neovim, for
example, install <> and add this to your `init.vim`:
```
let g:LanguageClient_serverCommands = {
	\ 'lua':  ['lua-lsp'],
	\ }
```
