return {
	"filipdutescu/renamer.nvim",
	event = "BufReadPre",
	config = function()
		require("renamer").setup({})
	end,
}
