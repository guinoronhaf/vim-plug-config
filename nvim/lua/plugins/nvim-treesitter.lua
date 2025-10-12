-- important: not all colorschemes support nvim-treesitter
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "python", "java", "vimdoc", "markdown" },
	sync_install = true,
	auto_install = true,

	highlight = {
		enable = true,
	},
}
