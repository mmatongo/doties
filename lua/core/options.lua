vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--:help options
local options = {
    autochdir      = true,                                                             -- Automatically change the working directory to the directory of the opened file.
    autoindent     = true,                                                             -- Copy indent from current line when starting a new line.
    autoread       = true,                                                             -- Automatically read files when changed outside of Neovim.
    autowrite      = true,                                                             -- Automatically write (save) the file before commands like :next and :make.
    background     = 'dark',                                                           -- Optimize colors for a dark background.
    backspace      = { 'indent', 'eol', 'start' },                                     -- Make backspace work more intuitively (allow it to delete over indentation, line breaks, and from insert mode).
    backup         = false,                                                            -- Don't create backup files before overwriting a file.
    binary         = false,                                                            -- Enable binary mode. Disable line endings and text encoding conversions.
    breakindent    = true,                                                             -- Indent wrapped lines visually to align with the start of the line.
    breakindentopt = "shift:4,min:20",
    cindent        = true,                                                             -- Enable smart C programming language indenting.
    clipboard      = { 'unnamedplus' },                                                -- Use the system clipboard for all yank, delete, change, and put operations.
    cmdheight      = 0,                                                                -- Number of lines for the command-line area.
    completeopt    = { 'menu', 'menuone', 'preview' },                                 -- Configure completion menu options. 'menu' shows a pop-up menu, 'menuone' shows it even for one match, and 'preview' shows a preview of the selected match.
    conceallevel   = 0,                                                                -- Don't conceal text unless explicitly marked (useful for syntax elements).
    confirm        = true,                                                             -- Ask for confirmation when exiting with unsaved changes.
    cursorline     = true,                                                             -- Highlight the screen line of the cursor with CursorLine.
    cursorlineopt  = 'line',                                                           -- Highlight only the text of the cursor line.
    encoding       = 'UTF-8',                                                          -- Set the default file encoding to UTF-8.
    errorbells     = false,                                                            -- Disable the bell sound on error messages.
    expandtab      = true,                                                             -- Convert tabs to spaces.
    fileencoding   = 'UTF-8',                                                          -- Set the file-specific encoding to UTF-8.
    fillchars      = { eob = ' ', fold = ' ', vert = '│', msgsep = '‾' },              -- Configure the fill characters for various parts of the UI.
    foldlevel      = 99,                                                               -- Start with all folds open.
    foldmethod     = 'syntax',                                                         -- Use syntax-based folding.
    formatoptions  = 'cqnj',                                                           -- Configure text formatting options.
    guicursor      = "n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor", -- Configure the cursor look
    guifont        = "Liga SFMono Nerd Font:h10",                             -- Set the font
    helpheight     = 15,
    hidden         = true,                                                             -- Allow switching between buffers without saving.
    hlsearch       = true,                                                             -- Highlight all matches of the search pattern.
    ignorecase     = true,                                                             -- Ignore case in search patterns.
    inccommand     = 'split',                                                          -- Show the effect of a command incrementally in a split.
    incsearch      = true,                                                             -- Show search matches as you type.
    laststatus     = 3,                                                                -- Always display the status line (0: never, 1: only if there are splits, 2: always, 3: global status line).
    linebreak      = true,                                                             -- Wrap lines at convenient points.
    list           = false,                                                            -- Show whitespace characters like tabs and trailing spaces.
    listchars      = { tab = '▸ ', trail = '·', nbsp = '␣', eol = '↴', extends = '→', precedes = '←' },
    matchpairs     = vim.opt.matchpairs:append("{:},<:>,':',\":\""),                   -- Add custom match pairs.
    mouse          = 'a',                                                              -- Enable mouse support in all modes.
    number         = true,                                                             -- Show line numbers.
    previewheight  = 15,
    pumblend       = 5,                                                                -- Make the popup menu semi-transparent.
    pumheight      = 25,                                                               -- Maximum height of the pop-up menu.
    relativenumber = false,                                                             -- Show line numbers relative to the current line.
    ruler          = false,                                                            -- Don't show the cursor position in the status line.
    scrolloff      = 15,                                                               -- Keep 15 lines visible above and below the cursor.
    shell          = 'zsh',                                                            -- Use Zsh as the shell for commands.
    shiftround     = true,                                                             -- Round indentation to the nearest multiple of 'shiftwidth'.
    shiftwidth     = 4,                                                                -- Number of spaces to use for each step of (auto)indent.
    shortmess      = vim.opt.shortmess:append('c'),                                    -- Append 'c' to shortmess to suppress certain messages.
    showcmd        = false,                                                            -- Don't show (partial) command in the last line of the screen.
    showmatch      = true,                                                             -- Briefly jump to the matching bracket if one is found.
    showmode       = false,                                                            -- Don't display the mode (like -- INSERT --) since it's usually shown in statusline plugins.
    sidescrolloff  = 15,                                                               -- Keep 15 columns visible to the left and right of the cursor.
    signcolumn     = 'yes',                                                            -- Always show the sign column to avoid text shifting.
    smartcase      = true,                                                             -- Override 'ignorecase' if the search pattern contains uppercase letters.
    smartindent    = true,                                                             -- Do smart auto-indenting when starting a new line.
    smarttab       = true,                                                             -- Insert 'tabstop' spaces when pressing Tab, align with 'shiftwidth' if inside an indent.
    softtabstop    = 4,                                                                -- Number of spaces a tab counts for in editing operations.
    splitbelow     = true,                                                             -- Open new horizontal splits below the current window.
    splitkeep      = "screen",
    splitright     = true,                                                             -- Open new vertical splits to the right of the current window.
    swapfile       = false,                                                            -- Don't use swap files.
    switchbuf      = 'useopen',                                                        -- Prefer to switch to already open buffers when opening files.
    synmaxcol      = 240,                                                              -- Limit syntax highlighting to the first 240 columns for performance.
    tabstop        = 4,                                                                -- Number of spaces that a <Tab> counts for.
    termguicolors  = true,                                                             -- Enable 24-bit RGB color in the terminal UI.
    textwidth      = 120,
    timeoutlen     = 700,                                                              -- Time (in milliseconds) to wait for a mapped sequence to complete.
    title          = true,                                                             -- Set the window title to the value of 'titlestring'.
    undofile       = true,                                                             -- Save undo history to an undo file.
    updatetime     = 100,                                                              -- Time (in milliseconds) to wait before triggering the swap file and CursorHold events.
    visualbell     = false,                                                            -- Disable visual bell (flashing) on error messages.
    whichwrap      = vim.opt.whichwrap:append('<,>,[,],h,l'),                          -- Extend wrap options for certain keys.
    wildmenu       = false,                                                            -- Disable command-line completion with a list of matches.
    winblend       = 5,                                                                -- Make the popup menu semi-transparent.
    winminwidth    = 10,                                                               -- The minimum width a window can be resized to. This ensures that windows are not resized below 10 columns when adjusting window splits.
    winwidth       = 30,                                                               -- The ideal width of windows when a new window is opened. Neovim will attempt to resize windows to at least 30 columns when possible.
    wrap           = true,                                                             -- Wrap long lines to the next line.
    writebackup    = false,                                                            -- Don't make a backup before overwriting a file.
    wildignore     = [[
    .git,.hg,.svn
    *.aux,*.out,*.toc
    *.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
    *.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
    *.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
    *.mp3,*.oga,*.ogg,*.wav,*.flac
    *.eot,*.otf,*.ttf,*.woff
    *.doc,*.pdf,*.cbr,*.cbz
    *.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
    *.swp,.lock,.DS_Store,._*
    */tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
    ]],
}

--ale
local ale_options = {
    ale_fixers = {
        ["*"] = { "remove_trailing_lines", "trim_whitespace" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        go = { "gofmt", "gopls", "goimports" },
    },
    ale_linters = {
        ["*"] = { "remove_trailing_lines", "trim_whitespace" },
        ruby = { "rubocop", "reek", "sorbet" },
        erb = { "erb_lint" },
        javascript = { "eslint" },
        markdown = { "markdownlint" },
        lua = { "stylua" },
        go = { "gofmt", "goimports", "golangci_lint", "gopls" },
    },
    ale_fixers_enabled = 1,
    ale_set_highlights = 1,
    ale_set_loclist = 1,
    ale_set_quickfix = 0,
    ale_set_signs = 1,
    ale_open_list = 0,
    ale_virtualtext_cursor = 0,
    ale_lint_on_text_changed = "never", -- Adjust according to preference
    ale_lint_on_insert_leave = 1,
    ale_lint_on_save = 1,
    ale_fix_on_save = 1,
}

--built-in-plugins
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

vim.diagnostic.config({
    signs = true,
    underline = false,
    update_in_insert = true,
    virtual_text = true,
    severity_sort = false,
    virtual_lines = true,
    float = {
        border = "rounded",
        focusable = true,
    },
})

for k, v in pairs(options) do
    vim.opt[k] = v
end

for _, plugin in pairs(built_ins) do
	vim.g["loaded_" .. plugin] = 1
end

for k, v in pairs(ale_options) do
    vim.g[k] = v
end
