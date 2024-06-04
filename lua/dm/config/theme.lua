local vc = vim.cmd
return {
	"rose-pine/neovim",
	-- event = "VeryLazy",
	-- lazy = true,
	priority = 1000,
	opts = {},
	config = function()
		vc("colorscheme rose-pine")
	end,
}
