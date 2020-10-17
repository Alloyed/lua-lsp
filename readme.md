# lua-lsp
[![Build Status](https://travis-ci.org/Alloyed/lua-lsp.svg)](https://travis-ci.org/Alloyed/lua-lsp)

A [Language Server][lsp] for Lua code, written in Lua.

[lsp]: https://github.com/Microsoft/language-server-protocol

It's still a work in progress, but it's usable for day-to-day. It currently
supports:

* Limited autocompletion
* Goto definition
* As you type linting and syntax checking
* Code formatting
* Supports Lua 5.1-5.3 and Luajit

### Installation/Usage

lua-lsp can be installed using luarocks:
```
$ luarocks install --server=http://luarocks.org/dev lua-lsp
```
This will install the `lua-lsp` command. Language clients can then communicate
with this process using stdio as a transport. See [editors.md](editors.md) for
more instructions specific to your editor of choice.

### Plugins

lua-lsp automatically integrates with common lua packages, when they are
installed. For linting, install luacheck:
```
$ luarocks install luacheck
```
For code formatting, we currently support Formatter and LCF. Formatter is 5.1
only, whereas lcf is 5.3 only.
5.1:
```
$ luarocks-5.1 install Formatter
$ luarocks-5.3 install lcf
```
If you have another package you'd like to see integrated, feel free to leave an
issue/PR. Other plugins are always welcome, especially if they provide
materially different results.

if lua-cjson is installed, we will optionally use it for a speed boost. It is
unfortunately not supported by all versions of lua at the moment, but as soon
as it is we will switch to making it mandatory.
```
$ luarocks install lua-cjson
```

### Configuration

lua-lsp reads a few project-level configuration files to do its work.

To configure linting, we read your standard [.luacheckrc][check] file.

For autocomplete support, we reimplement the [.luacompleterc][complete] format
created by atom-autocomplete-lua. In particular, we need `luaVersion` to
properly understand your code.

More LSP-specific configuration flags will hopefully be provided through your
editor's configuration support.

[complete]: https://github.com/dapetcu21/atom-autocomplete-lua#configuration
[check]: http://luacheck.readthedocs.io/en/stable/config.html

### TODO

The LSP spec is big, and we don't implement all of it. here's a
quick wishlist ordered by roughly by priority/feasibility.

* List references (`textDocument/references`)
* Find symbols (`workspace/symbol`)
* Function signature help (`textDocument/signatureHelp`)
* Code links (`textDocument/documentLink`)
* File events (`workspace/didChangeWatchedFiles`)
