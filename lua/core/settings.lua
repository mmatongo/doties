-- opts
local opt = vim.opt
local o = vim.o
local g = vim.g
local vc = vim.cmd
local vp = vim.api.nvim_exec
local vfs = vim.fn.sign_define

-- general
opt.termguicolors = true
opt.swapfile = true
opt.undofile = true
opt.cmdheight = 1
opt.showmode = false
vc("set noshowcmd")

opt.background = "dark"

-- settings IndentLine
g.indentLine_setColors = 0
g.indentLine_char = "┆"

-- status, tab, number, sign line
opt.ruler = false
opt.laststatus = 0
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
opt.cmdheight = 2
opt.ma = true

-- more opts
opt.ignorecase = true
opt.smartcase = true
opt.sidescroll = 40
opt.incsearch = true
opt.hlsearch = true
opt.backspace = "indent,eol,start"
opt.hidden = true
opt.wildmenu = true
opt.foldmethod = "manual"
opt.complete = ".,w,b,i,u,t,"
opt.autochdir = true
opt.wildmode = "longest:full,full"

-- more opts
o.wildignorecase = true
o.wrap = true
o.undolevels = 1000

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

-- neovide
if g.neovide then
	g.neovide_padding_top = 25
	g.neovide_cursor_vfx_mode = ""
	g.neovide_remember_window_size = true
	g.neovide_padding_top = 10
	vim.g.neovide_show_border = true

	-- disable neovide for certain filetypes
	vc(
		[[
		au FileType NvimTree,pack lua vim.g.neovide_remember_window_size = true
		]],
		false
	)
end

-- ale

vfs("DiagnosticSignError", { text = "│", texthl = "ALEErrorSign" })
vfs("DiagnosticSignWarn", { text = "│", texthl = "ALEWarningSign" })

vc([[
    highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#f47174 guibg=NONE
    highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ff9800 guibg=NONE
]])

g.ale_lint_on_text_changed = "never" -- Adjust according to preference
g.ale_lint_on_insert_leave = 1
g.ale_lint_on_save = 1
g.ale_fix_on_save = 1

g.ale_linters = {
	ruby = { "rubocop", "reek", "sorbet" },
	erb = { "erb_lint" },
	javascript = { "eslint" },
	html = { "tidy" },
	python = { "flake8", "mypy", "pylint" },
	lua = { "stylua" },
	go = { "gofmt", "goimports", "golangci_lint", "gopls" },
}

g.ale_fixers = {
	ruby = { "rubocop" },
	javascript = { "prettier" },
	html = { "tidy" },
	lua = { "stylua" },
	go = { "gofmt", "goimports", "gopls" },
}

g.ale_fixers_enabled = 1

g.ale_set_highlights = 1
g.ale_set_loclist = 1
g.ale_set_quickfix = 0
g.ale_set_signs = 1
g.ale_open_list = 0
g.ale_virtualtext_cursor = 0

vc([[
    autocmd FileType alpha setlocal nofoldenable
]])
