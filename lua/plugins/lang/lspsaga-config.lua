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
		width = 0.85, -- defines float window width
		height = 0.6, -- defines float window height
		keys = {
			edit = "<CR>",
			split = "s",
			vsplit = "v",
			close = "<C-c>",
		},
		width = 0.85,
		height = 0.6,
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
		-- separator = "  ",
		separator = " > ",
		show_file = true,
	},
	code_action = {
		-- https://nvimdev.github.io/lspsaga/codeaction/
		-- whether number shortcut for code actions are enabled
		-- num_shortcut = true,
		--
		show_server_name = true,
		extend_gitsigns = true,
		keys = {
			quit = { "q", "<ESC>" },
			exec = { "<CR>", "o" },
		},
	},
	hover = {
		-- https://nvimdev.github.io/lspsaga/hover/
		max_width = 0.9,
		max_height = 0.8,
	},
	ui = {
		border = "single",
		code_action = "ﯦ",
		diagnostic = "",
		preview = "",
		imp_sign = '󰳛 ',
	},
})

vim.api.nvim_set_hl(0, "SagaLightBulb", { fg = "#E8C266" })
