return {
    {
        'nvim-telescope/telescope.nvim',
        branch = "master",
        dependencies = {
            'nvim-lua/plenary.nvim',
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons"
        },
        config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			telescope.setup({
				defaults = {
					path_display = "smart",
				},
				pickers = {
					find_files = {
						follow = true
					}
				},
				mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
							["<C-n>"] = actions.cycle_history_next,
							["<C-p>"] = actions.cycle_history_prev,
						}
					}
			})

			telescope.load_extension("fzf")
			
			local keymap = vim.keymap
            local builtin = require('telescope.builtin')

            keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[F]ind [F]iles"})
            keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "[F]ind by [G]rep"})
			keymap.set('n', '<leader>fc', builtin.grep_string, {desc = "[F]ind by [C]urrent word under cursor"})
            keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
            keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]inder [R]esume' })
            keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
            keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind Existing [B]uffers' })
			keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>', {desc = '[F]ind [T]odo Comments'})
        end
    },
}
