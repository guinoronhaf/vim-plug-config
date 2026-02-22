-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('tpope/vim-sensible')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lualine/lualine.nvim')
Plug('romgrk/barbar.nvim')
-- it was necessary to fix a commit for nvim-treesitter (at branch master) because the latest update was broken on my nvim :(
Plug('nvim-treesitter/nvim-treesitter', { ['branch'] = 'master', ['commit'] = '42fc28b', ['do'] = ':TSUpdate' })
Plug('nvim-tree/nvim-tree.lua')
Plug('windwp/nvim-autopairs')
Plug('lewis6991/gitsigns.nvim')
Plug('numToStr/Comment.nvim')
Plug('ibhagwan/fzf-lua')
Plug('MeanderingProgrammer/render-markdown.nvim')
Plug('AlexvZyl/nordic.nvim', { ['branch'] = 'main' })
Plug('ellisonleao/gruvbox.nvim')
Plug('numToStr/FTerm.nvim')
Plug('Mofiqul/vscode.nvim')

vim.call('plug#end')

require("config.mappings")
require("config.options")

require("plugins.web-devicons")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.nvim-treesitter")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.comment")
require("plugins.fzf-lua")
require("plugins.nordic")
