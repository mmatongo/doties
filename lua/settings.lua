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
-- vim.cmd[[colorscheme rose-pine]]
vim.opt.background = 'dark'
vim.cmd 'colorscheme plain'


-- ale
g.ale_sign_error = "◉"
g.ale_sign_warning = "◉"
vc [[
    highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#f47174 guibg=#101010
    highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ff9800 guibg=#101010
 ]]
-- settings IndentLine
g.indentLine_setColors = 0
g.indentLine_char      = '┆'

-- settings gitgutter
-- g.gitgutter_override_sign_column_highlight = 0
-- g.gitgutter_sign_added                     = '+'      -- " '┃' "
-- g.gitgutter_sign_modified                  = '~'      -- " '┃' "
-- g.gitgutter_sign_removed                   = '-'      -- " '┃' "
-- g.gitgutter_sign_removed_first_line        = '-'      -- " '┃' "
-- g.gitgutter_sign_modified_removed          = '~'      -- " '┃' "

-- Gitsigns
-- local present, gitsigns = pcall(require, "gitsigns")
-- if present then
--   gitsigns.setup {
--     signs = {
--       add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
--       change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
--       delete = { hl = "DiffDelete", text = "│", numhl = "GitSignsDeleteNr" },
--       topdelete = { hl = "DiffDelete", text = "│", numhl = "GitSignsDeleteNr" },
--       changedelete = { hl = "DiffChangeDelete", text = "│", numhl = "GitSignsChangeNr" },
--     },
--   }
-- end

-- Telescope
-- local present, telescope = pcall(require, "telescope")
-- if present then
--   telescope.setup {
--     defaults = {
--       file_ignore_patterns = {
--         "%.jpg",
--         "%.jpeg",
--         "%.png",
--         "%.otf",
--         "%.ttf",
--         "node_modules",
--         ".git",
--       },
--       prompt_prefix = "   ",
--       selection_caret = "  ",
--       entry_prefix = "  ",
--       layout_strategy = "flex",
--       layout_config = {
--         horizontal = {
--           preview_width = 0.6,
--         },
--       },
--       border = {},
--       -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
--       borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--     },
--   }
-- end

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
