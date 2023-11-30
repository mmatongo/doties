-- opts
local opt = vim.opt
local g = vim.g
local vc = vim.cmd
local vp = vim.api.nvim_exec

-- general
opt.termguicolors = true
opt.swapfile = false
opt.undofile = true
opt.cmdheight = 1
opt.showmode = false
vc "set noshowcmd"

vim.opt.background = 'dark'
vim.cmd 'colorscheme plain'

-- settings IndentLine
g.indentLine_setColors = 0
g.indentLine_char      = '┆'

vc [[ au BufWritePost ~/.config/nvim/*.{vim,lua} so $MYVIMRC ]]
vc [[ au BufWritePost ~/.config/nvim/lua/*.{vim,lua} so $MYVIMRC ]]

-- status, tab, number, sign line
opt.ruler = false
opt.laststatus = 2
opt.showtabline = 1
opt.number = true
opt.signcolumn = "yes"

-- timeout stuff
opt.updatetime = 300
opt.timeout = true
opt.timeoutlen = 500
opt.ttimeoutlen = 10

-- remove intro
opt.shortmess:append "sI"
