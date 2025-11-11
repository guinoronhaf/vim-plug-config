local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	--default mappings
	api.config.mappings.default_on_attach(bufnr)

	--custom mappings
end

--pass to setup along with my other options

require("nvim-tree").setup {
	sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
	  icons = {
		  glyphs = {
			  git = {
				  unstaged = "✗",
				  staged = "✓",
				  unmerged = "",
				  renamed = "➜",
				  untracked = "★",
				  deleted = "",
				  ignored = "◌",
			  },
		  },
	  },
    },
    filters = {
      dotfiles = false,
    },
	git = {
		enable = true,
		ignore = false,
	},
	on_attach = my_on_attach,
}
