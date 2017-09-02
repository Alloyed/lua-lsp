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
