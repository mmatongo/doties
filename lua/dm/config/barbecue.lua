return {
	"utilyre/barbecue.nvim",
	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	dependencies = {
		"SmiteshP/nvim-navic",
	},
	config = function()
		require("barbecue").setup()
	end,
}
