local o = vim.o -- global optiosn
local bo = vim.bo -- buffer options
local wo = vim.wo -- window options

o.relativenumber = true
o.shiftwidth = 4
o.tabstop = 4
o.termguicolors = true
o.showmode = false
o.cursorline = true

o.background=dark
vim.cmd.colorscheme('vscode')
