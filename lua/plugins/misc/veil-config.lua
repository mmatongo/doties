-- veil config

local builtin = require("veil.builtin")
local present, veil = pcall(require, "veil")

if not present then
	return
end

veil.setup({
	sections = {
		builtin.sections.animated(builtin.headers.frames_nvim, {
			hl = { fg = "#5de4c7" },
		}),
		builtin.sections.buttons({
			{
				icon = "",
				text = "Find Files",
				shortcut = "f",
				callback = function()
					require("telescope.builtin").find_files()
				end,
			},
			{
				icon = "",
				text = "Find Word",
				shortcut = "w",
				callback = function()
					require("telescope.builtin").live_grep()
				end,
			},
			{
				icon = "",
				text = "Buffers",
				shortcut = "b",
				callback = function()
					require("telescope.builtin").buffers()
				end,
			},
			{
				icon = "",
				text = "Packer Update",
				shortcut = "p",
				callback = function()
					require("packer").sync()
				end,
			},
			{
				icon = "",
				text = "Close",
				shortcut = "q",
				callback = function()
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>:q<CR>", true, true, true), "t", true)
				end,
			},
		}),

		builtin.sections.oldfiles(),
	},
	mappings = {},
	startup = true,
	listed = false,
})
