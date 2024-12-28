return {
	"nvim-tree/nvim-tree.lua",
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	dependencies = {
		{
			"projekt0n/circles.nvim",
			config = function()
				require("circles").setup()
			end,
		},
		"kyazdani42/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	opts = function()
		return {
			filters = {
				dotfiles = false,
                custom = { "^\\.git$" },
			},
			update_cwd = true,
			disable_netrw = true,
			hijack_netrw = true,
			hijack_cursor = true,
			hijack_unnamed_buffer_when_opening = false,
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
				ignore_list = { "help" },
			},
			view = {
				adaptive_size = true,
				side = "left",
				width = 45,
				preserve_window_proportions = true,
			},
			git = {
				enable = true,
				ignore = true,
			},
			filesystem_watchers = {
				enable = true,
			},
			actions = {
				open_file = {
					resize_window = true,
				},
			},
			renderer = {
				root_folder_label = false,
				root_folder_modifier = ":t",
				highlight_git = true,
				highlight_opened_files = "none",

				indent_markers = {
					enable = true,
				},

				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},

					glyphs = {
						default = "󰈚",
						symlink = "",
						folder = {
							default = "",
							empty = "",
							empty_open = "",
							open = "",
							symlink = "",
							symlink_open = "",
							arrow_open = "",
							arrow_closed = "",
						},
						git = {
							unstaged = "•",
							staged = "•",
							unmerged = "•",
							renamed = "•",
							untracked = "•",
							deleted = "•",
							ignored = "•",
						},
					},
				},
			},
		}
	end,
	config = function(_, opts)
		require("nvim-tree").setup(opts)
		require("circles").setup()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "NvimTree",
			callback = function()
				vim.api.nvim_buf_set_name(0, "   nvim-tree")
			end,
		})
	end,
}

