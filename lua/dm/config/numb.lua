return {
	"nacro90/numb.nvim",
	event = { "BufRead", "BufNewFile" },
	opts = function()
		return {
			show_numbers = true,
			show_cursorline = true,
			hide_relativenumbers = false,
			number_only = false,
			centered_peeking = true,
		}
	end,
}
