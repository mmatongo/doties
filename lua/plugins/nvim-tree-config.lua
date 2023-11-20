local vc = vim.cmd

-- `nvim-tree` setup
require('nvim-tree').setup {
  auto_reload_on_write = true,
  update_cwd = true,
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        git = {
          unstaged = "[✗]",
          staged = "[✓]",
          unmerged = "[]",
          renamed = "[r]",
          untracked = "[u]",
          deleted = "[~]",
          ignored = "[i]"
        },
      },
    },
    root_folder_modifier = ":t",  -- Add this line
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  git = {
    enable = true, -- Enables git integration
  },
  filters = {
    dotfiles = true,
  }
}

-- Setup nvim-web-devicons
require('nvim-web-devicons').setup {
  default = true;
  color_icons = false;
}

vc [[
  autocmd Colorscheme * highlight NvimTreeNormal guibg=#030303
  autocmd Colorscheme * highlight NvimTreeFolderName guifg=#d7ebba
  autocmd Colorscheme * highlight NvimTreeRootFolder guifg=#404040
  autocmd Colorscheme * highlight NvimTreeExecFile guifg=#d7ebba
  autocmd Colorscheme * highlight NvimTreeNormal guifg=#c5c8c6
  autocmd FileType NvimTree lua vim.api.nvim_buf_set_name(0, '   nvim-tree')
]]

vc [[
  highlight NvimTreeFolderIcon guifg=#c5c8c6
  highlight NvimTreeGitDirty guifg=#c5c8c6
  highlight NvimTreeGitStaged guifg=#c5c8c6
  highlight NvimTreeGitMerge guifg=#c5c8c6
  highlight NvimTreeGitRenamed guifg=#c5c8c6
  highlight NvimTreeGitNew guifg=#c5c8c6
  highlight NvimTreeGitDeleted guifg=#c5c8c6
  highlight NvimTreeSpecialFile guifg=#c5c8c6
]]
