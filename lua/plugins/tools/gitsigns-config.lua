-- gitsigns config
local vc = vim.cmd

local present, gitsigns = pcall(require, "gitsigns")

if not present then
	return
end

gitsigns.setup({
	signs = {
		add = { hl = "GitGutterAdd", text = "│" },
		change = { hl = "GitGutterChange", text = "│" },
		delete = { hl = "GitGutterDelete", text = "│" },
		topdelete = { hl = "GitGutterDelete", text = "│" },
		changedelete = { hl = "GitGutterChange", text = "│" },
	},
})

vc([[
    hi GitGutterAdd guifg=#5FD7A7 guibg=NONE
    hi GitGutterChange guifg=#008EC4 guibg=NONE
    hi GitGutterDelete guifg=#D75F5F guibg=NONE
  ]])
