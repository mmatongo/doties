return {
	"lewis6991/gitsigns.nvim",
	lazy = true,
	event = { "BufReadPost", "BufWritePost" },
	opts = function()
		return {
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "│" },
				topdelete = { text = "│" },
				changedelete = { text = "│" },
				untracked = { text = "│" },
			},
            signcolumn     = true,  -- Toggle with `:Gitsigns toggle_signs`
			linehl         = false, -- Toggle with `:Gitsigns toggle_linehl`
			numhl          = false, -- Toggle with `:Gitsigns toggle_nunhl`
			word_diff      = false, -- Toggle with `:Gitsigns toggle_word_diff`
			sign_priority  = 9,
			watch_gitdir   = {
				interval     = 1000,
			},

			attach_to_untracked = false,

			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function opts(desc)
					return { buffer = bufnr, desc = desc }
				end

				local map = vim.keymap.set

				map("n", "<leader>rh", gs.reset_hunk, opts("Reset Hunk"))
				map("n", "<leader>ph", gs.preview_hunk, opts("Preview Hunk"))
				map("n", "<leader>gb", gs.blame_line, opts("Blame Line"))

				--vim.cmd([[
                --    hi GitGutterAdd guifg=#5FD7A7 guibg=NONE
                --    hi GitGutterChange guifg=#008EC4 guibg=NONE
                --    hi GitGutterDelete guifg=#D75F5F guibg=NONE
                --]])
                
                vim.api.nvim_set_hl(0, 'GitSignsDiffAdd', { fg = '#5FD7A7' })
                vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#008EC4' })
                vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#D75F5F' })
			end,
		}
	end,
}
