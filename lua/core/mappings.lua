local g = vim.g
local vkm = vim.api.nvim_set_keymap
local fn = vim.fn
local vc = vim.cmd

-- leader key
g.mapleader = ","

-- keymaps
opts = { noremap = true, silent = true }

vkm("n", "<C-s>", ":write<CR>", opts)
vkm("n", "<C-q>", ":q!<CR>", opts)
vkm("n", "<C-x>", ":quit<CR>", opts)
vkm("n", "<C-e>", ":lua minimal()<CR>", opts)
vkm("n", "<C-a>", ":tabnew<CR>", opts)
vkm("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
vkm("n", "<TAB>", ":tabnext<CR>", opts)
vkm("n", "<C-k>", ":ALEFix<CR>", opts)
vkm("n", "<C-v>", ":Lengendary.find<CR>", opts)

-- telescope
vkm("n", "<C-f>", ":Telescope find_files<CR>", opts)
vkm("n", "<C-g>", ":Telescope live_grep<CR>", opts)
vkm("n", "<C-w>", ":Telescope file_browser<CR>", opts)
vkm("n", "<C-h>", ":Telescope help_tags<CR>", opts)
vkm("n", "<C-p>", ":Telescope git_files<CR>", opts)
vkm("n", "<C-t>", ":Telescope treesitter<CR>", opts)
vkm("n", "<C-b>", ":Telescope buffers<CR>", opts)
vkm("n", "<C-c>", ":Telescope commands<CR>", opts)
vkm("n", "<C-u>", ":Telescope undo<CR>", opts)

-- other.nvim
vkm("n", "<C-j>", ":OtherVSplit<CR>", opts)

-- mason
vkm("n", "<C-[>", ":Mason<CR>", opts)

-- lspsaga
vkm("n", "gh", ":Lspsaga lsp_finder<CR>", opts)
vkm("n", "gg", ":Lspsaga code_action<CR>", opts)
vkm("n", "gj", ":Lspsaga hover_doc<CR>", opts)
vkm("n", "gk", ":Lspsaga signature_help<CR>", opts)
vkm("n", "gl", ":Lspsaga show_line_diagnostics<CR>", opts)
vkm("n", "gq", ":Lspsaga rename<CR>", opts)
vkm("n", "gR", ":Lspsaga preview_definition<CR>", opts)

-- clear enter mapping
vkm("n", "<CR>", "<NOP>", opts)
vkm("n", "<ESC>", "<NOP", opts)

-- toggleterm
vkm("n", "<C-l>", ":ToggleTerm<CR>", opts)

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

-- check if neovide is running
if g.neovide then
	g.neovide_input_use_logo = 1
	vkm('', '<D-v>', '+p<CR>', opts)
	vkm('!', '<D-v>', '<C-R>+', opts)
	vkm('t', '<D-v>', '<C-R>+', opts)
	vkm('v', '<D-v>', '<C-R>+', opts)
end
