-- opts
local g = vim.g
local vkm = vim.api.nvim_set_keymap
local fn = vim.fn
local vc = vim.cmd

-- leader key
g.mapleader = ","

-- keymaps
vkm("n", "<C-s>", ":write<CR>", { noremap = true, silent = true })
vkm("n", "<C-x>", ":quit<CR>", { noremap = true, silent = true })
vkm("n", "<C-e>", ":lua minimal()<CR>", { noremap = true, silent = true })
vkm("n", "<C-a>", ":tabnew<CR>", { noremap = true, silent = true })
vkm("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vkm("n", "<TAB>", ":tabnext<CR>", { noremap = true, silent = true })
vkm("n", "<C-k>", ":ALEFix<CR>", { noremap = true, silent = true })
vkm("n", "<C-v>", ":Vista!!<CR>", { noremap = true, silent = true })

-- which-key
vkm("n", "<C-]>", ":WhichKey<CR>", { noremap = true, silent = true })

-- telescope
vkm("n", "<C-f>", ":Telescope find_files<CR>", { noremap = true, silent = true })
vkm("n", "<C-g>", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vkm("n", "<C-h>", ":Telescope help_tags<CR>", { noremap = true, silent = true })
vkm("n", "<C-p>", ":Telescope git_files<CR>", { noremap = true, silent = true })
vkm("n", "<C-t>", ":Telescope treesitter<CR>", { noremap = true, silent = true })
vkm("n", "<C-b>", ":Telescope buffers<CR>", { noremap = true, silent = true })
vkm("n", "<C-c>", ":Telescope commands<CR>", { noremap = true, silent = true })

-- mason
vkm("n", "<C-[>", ":Mason<CR>", { noremap = true, silent = true })

-- sidebar
vkm("n", "<C-m>", ":SidebarNvimToggle<CR>", { noremap = true, silent = true })

-- ssr
vim.keymap.set({ "n", "x" }, "<C-;>", function()
	require("ssr").open()
end)

function minimal()
	if active then
		vc([[
      set number relativenumber noshowmode showtabline=1 laststatus=2 signcolumn=yes foldcolumn=0
      au WinEnter,BufEnter, * set number relativenumber
    ]])
		active = false
	else
		vc([[
      set nonumber norelativenumber showmode showtabline=0 laststatus=0 signcolumn=no foldcolumn=1
      au WinEnter,BufEnter, * set nonumber norelativenumber
    ]])
		active = true
	end
end
