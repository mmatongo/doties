local vc = vim.cmd
return {
	"olivercederborg/poimandres.nvim",
	event = "VeryLazy",
	lazy = true,
	priority = 1000,
	opts = {},
	config = function()
		vc("colorscheme poimandres")
	end,
}
