return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufRead", "BufNewFile" },
	config = function()
		require("colorizer").setup()
	end,
}
