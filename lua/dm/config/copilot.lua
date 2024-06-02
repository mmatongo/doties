return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = function()
		return {
			suggestion = {
				-- enabled = false,
				auto_trigger = false,
				keymap = {},
			},
			panel = {
				enabled = false,
			},
		}
	end,
	dependencies = {
		{
			"zbirenbaum/copilot-cmp",
			config = function()
				require("copilot_cmp").setup()
			end,
		},
	},
}
