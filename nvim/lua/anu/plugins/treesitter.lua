return {
	"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({ -- enable syntax highlighting
				highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"json",
				"yaml",
				"dockerfile",
				"gitignore",
				"javascript",
				"typescript",
				"tsx",
				"go",
				"rust",
				"java",
				"kotlin",
				"python",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"query",
				"vimdoc",
				"http",
				"cpp",
				"c",
			},
			incremental_selection = {
				enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
			additional_vim_regex_highlighting = false
		},
	})

	vim.treesitter.language.register("bash", "zsh")
	end,
}
