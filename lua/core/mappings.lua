local g = vim.g
local vkm = vim.api.nvim_set_keymap
local fn = vim.fn
local vc = vim.cmd

-- leader key
g.mapleader = ","

-- keymaps
vkm("n", "<C-s>", ":write<CR>", { noremap = true, silent = true })
vkm("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
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
vkm("n", "<C-w>", ":Telescope file_browser<CR>", { noremap = true, silent = true })
vkm("n", "<C-h>", ":Telescope help_tags<CR>", { noremap = true, silent = true })
vkm("n", "<C-p>", ":Telescope git_files<CR>", { noremap = true, silent = true })
vkm("n", "<C-t>", ":Telescope treesitter<CR>", { noremap = true, silent = true })
vkm("n", "<C-b>", ":Telescope buffers<CR>", { noremap = true, silent = true })
vkm("n", "<C-c>", ":Telescope commands<CR>", { noremap = true, silent = true })
vkm("n", "<C-u>", ":Telescope undo<CR>", { noremap = true, silent = true })

-- treesitter
--vkm("n", "<C-=", ":TSBufEnable highlight<CR>", { noremap = true, silent = true })

-- other.nvim
--vkm("n", "<C-j>", ":OtherVSplit<CR>", { noremap = true, silent = true })

-- mason
vkm("n", "<C-[>", ":Mason<CR>", { noremap = true, silent = true })

-- sidebar

-- clear enter mapping
vkm("n", "<CR>", "<NOP>", { noremap = true, silent = true })
vkm("n", "<ESC>", "<NOP", { noremap = true, silent = true })

-- vim.lsp
--vkm("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
--vkm("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
--vkm("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
--vkm("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
--vkm("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
--vkm("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
--vkm(
--	"n",
--	"<leader>wl",
--	"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
--	{ noremap = true, silent = true }
--)
-- lua vim.lsp.buf.code_action()
--vkm("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
--vkm("n", "<C-l>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

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
