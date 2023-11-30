local fn = vim.fn
local cmd = vim.cmd
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

-- Install packer if not already installed
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd("packadd packer.nvim")

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

vim.cmd("packadd packer.nvim")

return require("packer").startup(function()
	use({
      "wbthomason/packer.nvim",
      opt = true
    })
	use 'norcalli/nvim-base16.lua'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
	use 'lewis6991/gitsigns.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/which-key.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'akinsho/toggleterm.nvim'
    use 'liuchengxu/vista.vim'
    use 'willothy/veil.nvim'
    use 'dense-analysis/ale'
    use 'williamboman/mason.nvim'
    use 'github/copilot.vim'
    use 'gen740/SmoothCursor.nvim'
    use 'max397574/better-escape.nvim'
    use 'FeiyouG/commander.nvim'
    use 'cshuaimin/ssr.nvim'
    use 'sidebar-nvim/sidebar.nvim'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      }
    }
    use {
      'L3MON4D3/LuaSnip',
      requires = {
        'rafamadriz/friendly-snippets',
      }
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }
    use {
      'mmatongo/vim-colors-plain',
      branch = 'duotone'
    }
	if packer_bootstrap then
		require("packer").sync()
	end
end)
