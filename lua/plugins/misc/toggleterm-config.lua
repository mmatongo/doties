-- toogleterm config

local present, toggleterm = pcall(require, "toggleterm")

if not present then
	return
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell,
})
