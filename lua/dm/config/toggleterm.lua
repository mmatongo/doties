return {
	"akinsho/toggleterm.nvim",
	opts = function()
		return {
			size = 25,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			auto_scroll = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				-- width = 100,
				-- height = 25,
				winblend = 6,
			},
		}
	end,
	cmd = "ToggleTerm",
	lazy = true,
}
