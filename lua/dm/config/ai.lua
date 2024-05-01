return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = function()
		return {
			suggestion = { enabled = false },
			panel = { enabled = false },
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
