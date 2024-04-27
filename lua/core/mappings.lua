local g = vim.g
local vks = vim.keymap.set
local fn = vim.fn
local vc = vim.cmd

-- leader key
g.mapleader = ","

-- keymaps
opts = { noremap = true, silent = true }

vks("n", "<C-s>", ":write<CR>", opts)
vks("n", "<C-q>", ":q!<CR>", opts)
vks("n", "<C-x>", ":quit<CR>", opts)
vks("n", "<C-e>", ":lua minimal()<CR>", opts)
vks("n", "<C-a>", ":tabnew<CR>", opts)
vks("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
vks("n", "<TAB>", ":tabnext<CR>", opts)
vks("n", "<C-k>", ":ALEFix<CR>", opts)
vks("n", "<C-v>", ":Lengendary.find<CR>", opts)

-- telescope
vks("n", "<C-f>", ":Telescope find_files<CR>", opts)
vks("n", "<C-g>", ":Telescope live_grep<CR>", opts)
vks("n", "<C-w>", ":Telescope file_browser<CR>", opts)
vks("n", "<C-h>", ":Telescope help_tags<CR>", opts)
vks("n", "<C-p>", ":Telescope git_files<CR>", opts)
vks("n", "<C-t>", ":Telescope treesitter<CR>", opts)
vks("n", "<C-b>", ":Telescope buffers<CR>", opts)
vks("n", "<C-c>", ":Telescope commands<CR>", opts)
vks("n", "<C-u>", ":Telescope undo<CR>", opts)

-- other.nvim
vks("n", "<C-j>", ":OtherVSplit<CR>", opts)

-- mason
vks("n", "<C-[>", ":Mason<CR>", opts)

-- renamer
vks("n", "<C-]>", ":silent :lua require('renamer').rename()<CR>", opts)
vks("n", "<C-\\>", ":lua vim.lsp.buf.rename()<CR>", opts)

-- clear enter mapping
vks("n", "<CR>", "<NOP>", opts)
vks("n", "<ESC>", "<NOP", opts)

-- toggleterm
vks("n", "<C-l>", ":ToggleTerm<CR>", opts)

-- searchbox
vks("n", "<leader>s", ":SearchBoxMatchAll<CR>", opts)
vks("n", "<leader>S", ":SearchBoxReplace<CR>", opts)


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
	vks("", "<D-v>", "+p<CR>", opts)
	vks("!", "<D-v>", "<C-R>+", opts)
	vks("t", "<D-v>", "<C-R>+", opts)
	vks("v", "<D-v>", "<C-R>+", opts)
end
