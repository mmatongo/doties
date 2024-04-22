options = {
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
}

return options
