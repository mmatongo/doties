local vks = vim.keymap.set
local builtin = require('telescope.builtin')

local present, telescope = pcall(require, "telescope")
if present then
  telescope.setup {
    defaults = {
      file_ignore_patterns = {
        "%.jpg",
        "%.jpeg",
        "%.png",
        "%.otf",
        "%.ttf",
        "node_modules",
        ".git",
      },
      prompt_prefix = "   ",
      selection_caret = "  ",
      entry_prefix = "  ",
      layout_strategy = "flex",
      layout_config = {
        horizontal = {
          preview_width = 0.6,
        },
      },
      border = {},
      -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },
  }
end

vks('n', '<leader>ff', builtin.find_files, {})
vks('n', '<leader>fg', builtin.live_grep, {})
vks('n', '<leader>fb', builtin.buffers, {})
vks('n', '<leader>fh', builtin.help_tags, {})
