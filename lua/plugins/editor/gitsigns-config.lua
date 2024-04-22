-- gitsigns config

local options = {
	signs = {
		add = { hl = "GitGutterAdd", text = "│" },
		change = { hl = "GitGutterChange", text = "│" },
		delete = { hl = "GitGutterDelete", text = "│" },
		topdelete = { hl = "GitGutterDelete", text = "│" },
		changedelete = { hl = "GitGutterChange", text = "│" },
    untracked = { hl = "GitGutterAdd", text = "│" },
	},

  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function opts(desc)
      return { buffer = bufnr, desc = desc }
    end

    local map = vim.keymap.set

    map("n", "<leader>rh", gs.reset_hunk, opts "Reset Hunk")
    map("n", "<leader>ph", gs.preview_hunk, opts "Preview Hunk")
    map("n", "<leader>gb", gs.blame_line, opts "Blame Line")

    vim.cmd [[
      hi GitGutterAdd guifg=#5FD7A7 guibg=NONE
      hi GitGutterChange guifg=#008EC4 guibg=NONE
      hi GitGutterDelete guifg=#D75F5F guibg=NONE
    ]]
  end,
}

return options
