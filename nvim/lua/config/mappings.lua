vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "ç", "$a")

map("n", "<C-l>", "<Cmd>wincmd l<CR>")
map("n", "<C-h>", "<Cmd>wincmd h<CR>")
map("n", "<C-k>", "<Cmd>wincmd k<CR>")
map("n", "<C-j>", "<Cmd>wincmd j<CR>")

map("n", "<leader>h", "<Cmd>nohlsearch<CR>", opts)

map("n", "vg", "<Cmd>normal!ggVG<CR>")

map("i", "syso", "System.out.println()<Left>", opts)

map("x", "ss", ":s/")

-- barbar mappings
map("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "[b", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "]b", "<Cmd>BufferMoveNext<CR>", opts)
map("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)

-- nvim-tree mappings
map("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
map("n", "<leader>e", "<Cmd>NvimTreeFocus<CR>", opts)

-- fzf-lua mappings
map("n", "<leader>ff", "<Cmd>FzfLua files<CR>", opts)
map("n", "<leader>fg", "<Cmd>FzfLua live_grep<CR>", opts)

-- FTerm mappings
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
