-- telescope config

local vks = vim.keymap.set
local builtin = require("telescope.builtin")
local present, telescope = pcall(require, "telescope")
local fb_actions = require("telescope._extensions.file_browser.actions")

if not present then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = {
			"%.jpg",
			"%.jpeg",
			"%.png",
			"%.otf",
			"%.ttf",
			"node_modules",
			".git",
		},
		prompt_prefix = " ❯ ",
		selection_caret = "  ",
		entry_prefix = "  ",
		layout_strategy = "flex",
		layout_config = {
			horizontal = {
				preview_width = 0.6,
			},
		},
		border = {},
		-- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		extensions = {
			undo = {
				use_delta = true,
				use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
				side_by_side = false,
				diff_context_lines = vim.o.scrolloff,
				entry_format = "state #$ID, $STAT, $TIME",
				time_format = "",
				saved_only = false,
			},
		},
	},
	extensions = {
		file_browser = {
			hidden = true,
			show_hidden = true,
			file_ignore_patterns = { "%.jpg", "%.jpeg", "%.png", "%.otf", "%.ttf", "node_modules", ".git" },
		},
	},
})
