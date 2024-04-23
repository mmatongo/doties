-- ale config

local vc = vim.cmd
local vfs = vim.fn.sign_define
local g = vim.g

-- Custom signs and colors
vfs("DiagnosticSignError", { text = "│", texthl = "ALEErrorSign" })
vfs("DiagnosticSignWarn", { text = "│", texthl = "ALEWarningSign" })

vc([[
    highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#f47174 guibg=NONE
    highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ff9800 guibg=NONE
]])

-- ALE General Settings
g.ale_lint_on_text_changed = "never" -- Adjust according to preference
g.ale_lint_on_insert_leave = 1
g.ale_lint_on_save = 1
g.ale_fix_on_save = 1

-- Ruby specific linters and fixers
g.ale_linters = {
	ruby = { "rubocop", "reek", "sorbet" },
	erb = { "erb_lint" },
	javascript = { "eslint" }, -- Add your preferred linter for JS
	html = { "tidy" }, -- Add your preferred linter for HTML
	-- Add other file types and their linters as needed
	python = { "flake8", "mypy", "pylint" },
	lua = { "stylua" },
	go = { "gofmt", "goimports" },
}
g.ale_fixers = {
	--ruby = { "rubocop" },
	javascript = { "prettier" }, -- Add your preferred fixer for JS
	html = { "tidy" }, -- Add your preferred fixer for HTML
	lua = { "stylua" },
	go = { "gofmt", "goimports" },
}

-- Enable ALE fixers
g.ale_fixers_enabled = 1

-- Additional ALE Settings
g.ale_set_highlights = 1
g.ale_set_loclist = 1
g.ale_set_quickfix = 0
g.ale_set_signs = 1
g.ale_open_list = 0
g.ale_virtualtext_cursor = 0
