As a single developer, I only use one editor most of the time, so I can only
give very detailed info on that editor. If you do figure out how to integrate
lua-lsp with your editor, I'd love to hear from you~

### Neovim
There are a few neovim implementations of language clients: I personally use
[autozimu's client][nvim]. My LSP configurations looks something like this:

```vim
let g:LanguageClient_serverCommands = {
	\ 'lua': ['lua-lsp'],
	\ }
let g:LanguageClient_autoStart = 1
```

[nvim]: https://github.com/autozimu/LanguageClient-neovim

### Visual Studio Code

Visual Studio Code implements language client support through an extension
[library][vscode]. If you're interested in maintaining an extension for VSCode,
please contact me.

[vscode]: https://www.npmjs.com/package/vscode-languageclient

### Atom-IDE

Atom, like VS Code, implements language client support through an extension
[library][atom-ide]. If you're interested in maintaining an extension for
Atom, please contact me.

[atom-ide]: https://github.com/atom/atom-languageclient

### Sublime Text 3

Sublime has an [LSP plugin][st3] That can be used directly specifying the
`lua-lsp` command. if you have a working configuration, please contribute it!

[st3]: https://github.com/tomv564/LSP

### Emacs

Emacs has a [package][emacs] to create language clients. If you have a working
configuration, please contribute it!

[emacs]: https://github.com/emacs-lsp/lsp-mode
