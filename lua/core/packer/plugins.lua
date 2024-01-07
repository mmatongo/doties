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
		opt = true,
	})
	use("norcalli/nvim-base16.lua")
	use("nvim-lua/plenary.nvim")
	use("lewis6991/gitsigns.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("folke/which-key.nvim")
	use("akinsho/toggleterm.nvim")
	use("liuchengxu/vista.vim")
	use("willothy/veil.nvim")
	use("dense-analysis/ale")
	use("williamboman/mason.nvim")
	use("github/copilot.vim")
	use("max397574/better-escape.nvim")
	use("sidebar-nvim/sidebar.nvim")
	use("windwp/nvim-autopairs")
	use("kyazdani42/nvim-tree.lua")
	use("andersevenrud/nvim_context_vt")
	use("rgroli/other.nvim")
	use("stevearc/dressing.nvim")
	use("simrat39/symbols-outline.nvim")
	use("m-demare/hlargs.nvim")
	use("mrjones2014/legendary.nvim")
	use({ "Jxstxs/conceal.nvim" })
	use({
		"projekt0n/circles.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("circles").setup()
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"debugloop/telescope-undo.nvim",
		},
	})
	use({
		"L3MON4D3/LuaSnip",
		requires = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"Wansmer/symbol-usage.nvim",
		config = function()
			require("symbol-usage").setup()
		end,
	})
	use({
		"mmatongo/vim-colors-plain",
		branch = "duotone",
	})
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-buffer",
		},
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
