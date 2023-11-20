-- dashboard-config.lua
local db = require('dashboard')

db.setup({
    theme = 'hyper',
    config = {
        week_header = {
            enable = true,
        },
        -- hide the projects shortcut
        hide_projects = true,
        shortcut = {
            {
                desc = '󰊳 Update',
                group = '@property',
                action = 'PackerSync',
                key = 'u'
            },
            {
                icon = ' ',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                icon = ' ',
                icon_hl = '@function',
                desc = 'TSUpdateSync',
                group = 'Label',
                action = 'TSUpdateSync',
                key = 'd',
            }
        },
        hide = {
            statusline = true,
            tabline = true,
        },
        preview = {
            command = '',
            file_path = nil,
            file_height = 0,
            file_width = 0,
        },
    },
})

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "dashboard",
--     callback = function()
--         -- Set the cursor to a line in normal mode
--         -- vim.cmd('setlocal guicursor=n:ver25')

--         -- Disable modifications, wrapping, and scrolling
--         vim.api.nvim_buf_set_option(0, 'modifiable', false)
--         vim.api.nvim_win_set_option(0, 'wrap', false)
--         vim.api.nvim_win_set_option(0, 'scrollbind', false)
--         vim.api.nvim_win_set_option(0, 'cursorline', false)
--         vim.api.nvim_win_set_option(0, 'cursorcolumn', false)

--         -- Set the buffer as unmodifiable and no line numbers
--         vim.wo.number = false
--         vim.wo.relativenumber = false
--         vim.wo.signcolumn = 'no'
--     end,
-- })

