local present, other_nvim = pcall(require, "other-nvim")

other_nvim.setup({
	mappings = {
		-- builtin mappings
		"livewire",
		"angular",
		"laravel",
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
})
