local vc = vim.cmd
local vkm = vim.api.nvim_set_keymap

require("sidebar-nvim").setup({
        disable_default_keybindings = 0,
        bindings = nil,
        open = false,
        side = "right",
        initial_width = 35,
        hide_statusline = false,
        update_interval = 1000,
        sections = { "git", "symbols", "files" },
        -- section_separator = { "", "-----", "" },
        section_title_separator = { "" },
        todos = { ignored_paths = { "~" } },
      })

vc [[
  autocmd FileType SidebarNvim lua vim.api.nvim_buf_set_name(0, ' ')
]]

vkm("n", "<C-m>", ":SidebarNvimToggle<CR>", { noremap = true, silent = true })
