local present, conceal = pcall(require, "conceal")

if not present then
	return
end

-- should be run before .generate_conceals to use user Configuration
conceal.setup({
	["lua"] = {
		enabled = true,
		keywords = {
			["local"] = {
				enabled = false, -- to disable concealing for "local"
			},
			["return"] = {
				conceal = "R", -- to set the concealing to "R"
			},
			["for"] = {
				highlight = "keyword", -- to set the Highlight group to "@keyword"
			},
		},
	},
})

-- generate the scm queries
-- only need to be run when the Configuration changes
conceal.generate_conceals()

-- bind a <leader>tc to toggle the concealing level
vim.keymap.set("n", "<leader>tc", function()
	require("conceal").toggle_conceal()
end, { silent = true })
