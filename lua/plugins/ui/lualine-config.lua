local lualine = require "lualine"

lualine.setup {
  options = {
  globalstatus = true,
  icons_enabled = true,
  component_separators = { left = "", right = "" },
  section_separators = { left = "", right = "" },
  theme = theme,
  disabled_filetypes = {
    "dashboard",
    "lspinfo",
    "mason",
    "startuptime",
    "checkhealth",
    "help",
    "TelescopePrompt",
    "toggleterm",
    "undotree",
    "NvimTree",
    "alpha",
    "lazy",
    "packer",
    "structrue-go",
  },
  always_divide_middle = false,
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'buffers'},
    lualine_x = {'tabs'},
    lualine_y = {'progress'},
    lualine_z = {
      { 'diagnostics',
        sources = {'nvim_diagnostic', 'nvim_lsp'},
        sections = {'error', 'warn', 'info', 'hint'},
          diagnostics_color = {
          -- Same values as the general color option can be used here.
          error = 'DiagnosticError', -- Changes diagnostics' error color.
          warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
          info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
          hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
        },
        symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
        colored = true,           -- Displays diagnostics status in color if set to true.
        update_in_insert = false, -- Update diagnostics in insert mode.
        always_visible = false,   -- Show diagnostics even if there are none.
      }
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },

  tabline = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },

  extensions = { "fugitive", "nvim-tree" },
  },
}

-- do not show the NvimTree_1 names in the statusline
