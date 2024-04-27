return {
	"rcarriga/nvim-notify",
	lazy = true,
	event = "BufReadPre",
	config = function()
		vim.notify = require("notify")
	end,
}
