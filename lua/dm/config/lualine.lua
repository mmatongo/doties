-- lualine config

return {
	"nvim-lualine/lualine.nvim",
	lazy = true,
	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	dependencies = {
		"projekt0n/circles.nvim",
		"kyazdani42/nvim-web-devicons",
	},
	enabled = function()
		return true
	end,
	opts = function()
		return {
			-- icons_enabled = true,
			options = {
				theme = "auto",
				component_separators = "⏽",
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					"alpha",
					"packer",
					"startify",
					"Lazy",
					"lazygit",
					"toggleterm",
					"TelescopePrompt",
					"structure-go",
					"nvim-tree",
					"Outline",
				},
				always_divide_middle = true,
				component_separators = {},
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = {
					{ "branch" },
					{ "diff" },
				},
				lualine_c = {
					{
						"filename",
						file_status = true, -- Displays file status (readonly status, modified status)
						newfile_status = false, -- Display new file status (new file means no write after created)
						path = 4, -- 0: Just the filename
						-- 1: Relative path
						-- 2: Absolute path
						-- 3: Absolute path, with tilde as the home directory
						-- 4: Filename and parent dir, with tilde as the home directory

						shorting_target = 40, -- Shortens path to leave 40 spaces in the window
						-- for other components. (terrible name, any suggestions?)
						symbols = {
							modified = "[+]", -- Text to show when the file is modified.
							readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
							unnamed = "[No Name]", -- Text to show for unnamed buffers.
							newfile = "[New]", -- Text to show for newly created file before first write
						},
					},
				},
				-- lualine_x = {
				-- 	-- "encoding",
				-- 	-- "fileformat",
				-- 	{
				-- 		"filetype",
				-- 		icons_enabled = true, -- Displays filetype icon.
				-- 		colors_enabled = true, -- Displays filetype color.
				-- 	},
				-- },
				lualine_y = {
					-- "%L",
					-- "progress",
					{
						"diagnostics",
						-- Table of diagnostic sources, available sources are:
						--   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
						-- or a function that returns a table as such:
						--   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
						sources = { "nvim_diagnostic" },

						-- 	-- Displays diagnostics for the defined severity types
						sections = { "error", "warn", "info", "hint" },
						separator = { left = "", right = "" },

						diagnostics_color = {
							-- Same values as the general color option can be used here.
							error = "DiagnosticError", -- Changes diagnostics' error color.
							warn = "DiagnosticWarn", -- Changes diagnostics' warn color.
							info = "DiagnosticInfo", -- Changes diagnostics' info color.
							hint = "DiagnosticHint", -- Changes diagnostics' hint color.
						},
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
						colored = true, -- Displays diagnostics status in color if set to true.
						update_in_insert = false, -- Update diagnostics in insert mode.
						always_visible = false, -- Show diagnostics even if there are none.
					},
				},
				-- lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
				lualine_x = {},
				-- lualine_y = {},
				lualine_z = {},
			},
			-- inactive_sections = {
			-- 	lualine_a = {},
			-- 	lualine_b = {},
			-- 	lualine_c = {
			-- 		{
			-- 			"filename",
			-- 			-- file_status = true, -- Displays file status (readonly status, modified status)
			-- 			-- newfile_status = false, -- Display new file status (new file means no write after created)
			-- 			path = 4, -- 0: Just the filename
			-- 			-- 1: Relative path
			-- 			-- 2: Absolute path
			-- 			-- 3: Absolute path, with tilde as the home directory
			-- 			-- 4: Filename and parent dir, with tilde as the home directory

			-- 			shorting_target = 40, -- Shortens path to leave 40 spaces in the window
			-- 			-- for other components. (terrible name, any suggestions?)
			-- 			symbols = {
			-- 				modified = "[+]", -- Text to show when the file is modified.
			-- 				readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
			-- 				-- unnamed = "[No Name]", -- Text to show for unnamed buffers.
			-- 				-- newfile = "[New]", -- Text to show for newly created file before first write
			-- 			},
			-- 		},
			-- 	},
			-- 	lualine_x = { "location" },
			-- 	lualine_y = {},
			-- 	lualine_z = {},
			-- },
			-- tabline = {},
			-- winbar = {},
			-- inactive_winbar = {},
			extensions = {},
		}
	end,
}
