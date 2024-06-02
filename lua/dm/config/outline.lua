return {
	"hedyhli/outline.nvim",
	cmd = { "Outline", "OutlineOpen" },
	event = "BufReadPre",
	opts = {
		-- symbol_folding = {
		-- 	-- Depth past which nodes will be folded by default
		-- 	autofold_depth = 1,
		-- },
		symbol_folding = {
			autofold_depth = false,
			auto_unfold = {
				hovered = true,
			},
		},
	},
	keys = {
		{ "<leader>to", "<cmd>Outline<cr>", desc = "Toggle Outline" },
	},
}
