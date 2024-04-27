return {
	"rgroli/other.nvim",
	event = "BufReadPre",
	opts = function()
		return {
			mappings = {
				"rails",
				"golang",
			},
			transformers = {
				lowercase = function(inputString)
					return inputString:lower()
				end,
			},
			style = {
				border = "rounded",
				seperator = "|",

				width = 0.7,
				minHeight = 2,
			},
		}
	end,
	config = function(_, opts)
		require("other-nvim").setup(opts)
	end,
}
