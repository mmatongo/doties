local vc = vim.cmd
return {
	"catppuccin/nvim",
	-- event = "VeryLazy",
	-- lazy = true,
	priority = 1000,
	opts = {},
	config = function()
		vc("colorscheme catppuccin-mocha")
	end,
}
