local vc = vim.cmd
return {
	"olivercederborg/poimandres.nvim",
	event = "VeryLazy",
	lazy = true,
	priority = 1000,
	opts = {},
	config = function()
		vc("colorscheme poimandres")
		-- poinmandres doesn't set a clear background for floating windows
		-- it blends with the background color making it hard to read
		vc("hi NormalFloat guibg=#1B1E28 guifg=#E4F0FB")
		vc("hi FloatBorder guibg=#1B1E28 guifg=#E4F0FB")
		vc("hi IncSearch guibg=#CBD0D3 guifg=NONE")
	end,
}
