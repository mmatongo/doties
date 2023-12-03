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
vc("set noshowcmd")

opt.background = "dark"
vc("colorscheme plain")

-- settings IndentLine
g.indentLine_setColors = 0
g.indentLine_char = "┆"

vc([[ au BufWritePost ~/.config/nvim/*.{vim,lua} so $MYVIMRC ]])
vc([[ au BufWritePost ~/.config/nvim/lua/*.{vim,lua} so $MYVIMRC ]])

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
opt.shortmess:append("sI")

opt.mouse = "a"
opt.fillchars = [[fold: ,vert:│,eob: ,msgsep:‾]]
---
opt.nu = true
opt.rnu = false
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 2
opt.inccommand = "nosplit"
opt.laststatus = 0
opt.cmdheight = 2
opt.ma = true

-- more opts
opt.ignorecase = true
opt.smartcase = true
opt.sidescroll = 40
opt.incsearch = true
opt.hlsearch = true
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.hidden = true
opt.wildmenu = true
opt.foldmethod = "manual"
opt.complete = ".,w,b,i,u,t,"
opt.background = [[dark]]
opt.laststatus = 0
opt.autochdir = true

-- disable inbuilt vim plugins
local built_ins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
}

for _, plugin in pairs(built_ins) do
	g["loaded_" .. plugin] = 1
end

-- timeout stuff
opt.updatetime = 300
opt.timeout = true
opt.timeoutlen = 500
opt.ttimeoutlen = 10

-- misc
vc([[hi NormalFloat guibg=#222222]])
vc([[hi FloatBorder guifg=#565c64 guibg=none]])
