-- Tree-sitter Configuration (as you provided)
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
    },
  },
  indent = {
    enable = true,
  },
  ensure_installed = "ruby",
  auto_install = true,
  ignore_install = { "javascript" },
}

