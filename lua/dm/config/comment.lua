return {
	"numToStr/Comment.nvim",
	lazy = true,
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		vim.defer_fn(function()
			require("Comment").setup()
		end, 1000)
	end,
}
