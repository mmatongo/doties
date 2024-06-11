local vc = vim.cmd
return {
	-- "rose-pine/neovim",
    "Yazeed1s/oh-lucy.nvim",
	-- event = "VeryLazy",
	-- lazy = true,
	priority = 1000,
	opts = {},
	config = function()
		-- vc("colorscheme rose-pine")
        vc("colorscheme oh-lucy")
	end,
}
