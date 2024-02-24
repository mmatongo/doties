local present, lspsaga = pcall(require, "lspsaga")

if not present then
	return
end

lspsaga.setup({
	move_in_saga = { prev = "k", next = "j" },
	diagnostic_header = { "•", "• ", "• ", "•" },
	preview = {
    lines_above = 0,
    lines_below = 10,
	},
	scroll_preview = {
		scroll_down = "<C-d>",
		scroll_up = "<C-u>",
	},
	definition = {
		keys = {
			edit = "<CR>",
			split = "s",
			vsplit = "v",
			close = "<C-c>",
		},
	},
	finder = {
		default = "ref+imp",
		silent = true,
		keys = {
			toggle_or_open = "<CR>",
		},
	},
	-- same as nvim-lightbulb but async
	lightbulb = {
		sign = false,
		enable_in_insert = false,
		virtual_text = false,
	},
	symbol_in_winbar = {
		enable = true,
		separator = "  ",
		show_file = true,
	},
	ui = {
		code_action = "ﯦ",
		diagnostic = "",
		preview = "",
	},
})

vim.api.nvim_set_hl(0, "SagaLightBulb", { fg = "#E8C266" })
