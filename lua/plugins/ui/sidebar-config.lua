-- sidebar config

local vc = vim.cmd
local present, sidebar = pcall(require, "sidebar-nvim")

if not present then
	return
end

sidebar.setup({
	disable_default_keybindings = 1,
	bindings = nil,
	open = false,
	side = "right",
	initial_width = 35,
	hide_statusline = false,
	update_interval = 100,
	sections = { "git", "symbols", "files" },
	-- section_separator = { "", "-----", "" },
	section_title_separator = { "" },
	todos = { ignored_paths = { "~" } },
})

vc([[
  autocmd FileType SidebarNvim lua vim.api.nvim_buf_set_name(0, ' ')
]])
