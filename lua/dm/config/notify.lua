return {
	"rcarriga/nvim-notify",
	event = "BufReadPre",
	config = function()
		vim.notify = require("notify")
	end,
}
