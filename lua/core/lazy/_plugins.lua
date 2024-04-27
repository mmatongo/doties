local fn = vim.fn
local vc = vim.cmd
local opt = vim.opt
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, "lazy")
if not ok then
	return
end

lazy.setup({
	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	-- 	dependencies = { "projekt0n/circles.nvim", "kyazdani42/nvim-web-devicons" },
	-- 	opts = function()
	-- 		return require("plugins.ui.nvim-tree-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("nvim-tree").setup(opts)
	-- 		require("circles").setup()
	-- 		vim.api.nvim_create_autocmd("FileType", {
	-- 			pattern = "NvimTree",
	-- 			callback = function()
	-- 				vim.api.nvim_buf_set_name(0, "   nvim-tree")
	-- 			end,
	-- 		})
	-- 	end,
	-- },

	-- { "nvim-lua/plenary.nvim" },
	-- {
	-- 	"lewis6991/gitsigns.nvim",
	-- 	lazy = true,
	-- 	event = { "BufReadPost", "BufWritePost" },
	-- 	opts = function()
	-- 		return require("plugins.editor.gitsigns-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("gitsigns").setup(opts)
	-- 	end,
	-- },
	-- {
	-- 	"akinsho/toggleterm.nvim",
	-- 	opts = function()
	-- 		return require("plugins.misc.toggleterm-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("toggleterm").setup(opts)
	-- 	end,
	-- 	cmd = "ToggleTerm",
	-- 	lazy = true,
	-- },
	-- {
	-- 	"dense-analysis/ale",
	-- 	-- cmd = { "ALEFix", "ALEFixSuggest" },
	-- 	event = "VeryLazy",
	-- },
	-- {
	-- 	"williamboman/mason.nvim",
	-- 	cmd = { "Mason", "MasonInstall", "MasonUpdate" },
	-- 	event = "VeryLazy",
	-- 	config = function()
	-- 		opts = require("plugins.tools.mason-config")
	-- 		require("mason").setup(opts)

	-- 		require("mason-lspconfig").setup({
	-- 			ensure_installed = {
	-- 				"gopls",
	-- 				"rubocop",
	-- 				"golangci_lint_ls",
	-- 			},
	-- 			automatic_installation = true,
	-- 		})

	-- 		local lspconfig = require("lspconfig")

	-- 		lspconfig.gopls.setup({})
	-- 		lspconfig.golangci_lint_ls.setup({})
	-- 		lspconfig.rubocop.setup({})
	-- 	end,
	-- 	dependencies = {
	-- 		"williamboman/mason-lspconfig.nvim",
	-- 		"neovim/nvim-lspconfig",
	-- 	},
	-- },

	-- {
	-- 	"max397574/better-escape.nvim",
	-- 	config = function()
	-- 		require("better_escape").setup()
	-- 	end,
	-- 	event = "InsertCharPre",
	-- },
	-- {
	-- 	"rgroli/other.nvim",
	-- 	event = "BufReadPre",
	-- 	opts = function()
	-- 		return require("plugins.editor.other-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("other-nvim").setup(opts)
	-- 	end,
	-- },
	-- {
	-- 	"m-demare/hlargs.nvim",
	-- 	opts = function()
	-- 		return require("plugins.lang.hlargs-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		local hlargs = require("hlargs")
	-- 		hlargs.setup(opts)
	-- 		hlargs.enable()
	-- 	end,
	-- 	event = "BufRead",
	-- },
	-- {
	-- 	"mrjones2014/legendary.nvim",
	-- 	lazy = true,
	-- 	event = "BufReadPre",
	-- 	opts = function()
	-- 		return require("plugins.misc.legendary-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("legendary").setup(opts)
	-- 	end,
	-- },
	-- {
	-- 	"nvim-lualine/lualine.nvim",
	-- 	lazy = true,
	-- 	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	-- 	opts = function()
	-- 		return require("dm.config.lualine")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("lualine").setup(opts)
	-- 	end,
	-- },
	-- {
	-- 	"akinsho/bufferline.nvim",
	-- 	version = "*",
	-- 	lazy = true,
	-- 	event = { "BufReadPost", "BufAdd", "BufNewFile" },
	-- 	opts = function()
	-- 		return require("plugins.ui.bufferline-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		local bufferline = require("bufferline")
	-- 		opts.options.style_preset = {
	-- 			bufferline.style_preset.no_italic,
	-- 			bufferline.style_preset.no_bold,
	-- 		}
	-- 		bufferline.setup(opts)
	-- 	end,
	-- },
	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	lazy = true,
	-- 	event = "BufReadPre",
	-- 	config = function()
	-- 		vim.notify = require("notify")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	event = "UiEnter",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vc("colorscheme catppuccin")
	-- 	end,
	-- },
	-- {
	-- 	"goolord/alpha-nvim",
	-- 	config = function()
	-- 		require("plugins.ui.alpha-config")
	-- 	end,
	-- 	lazy = true,
	-- 	event = "BufWinEnter",
	-- },
	-- {
	-- 	"crusj/structrue-go.nvim",
	-- 	branch = "main",
	-- 	event = "BufReadPre",
	-- 	opts = function()
	-- 		return require("plugins.lang.structrue-go-config")
	-- 	end,
	-- },
	-- {
	-- 	"ray-x/go.nvim",
	-- 	dependencies = { "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter" },
	-- 	config = function()
	-- 		require("go").setup()
	-- 	end,
	-- 	lazy = true,
	-- 	even = "InsertEnter",
	-- 	ft = { "go", "gomod" },
	-- 	build = ':lua require("go.install").update_all_sync()',
	-- },
	-- {
	-- 	"nvim-telescope/telescope.nvim",
	-- 	dependencies = {
	-- 		"debugloop/telescope-undo.nvim",
	-- 		"nvim-lua/popup.nvim",
	-- 		"nvim-telescope/telescope-file-browser.nvim",
	-- 	},
	-- 	cmd = "Telescope",
	-- 	lazy = true,
	-- 	-- event = "VeryLazy",
	-- 	opts = function()
	-- 		return require("plugins.tools.telescope-config")
	-- 	end,
	-- 	-- config = function(_, opts)
	-- 	-- 	local telescope = require("telescope")
	-- 	-- 	telescope.setup(opts)
	-- 	-- end,
	-- },

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	lazy = true,
	-- 	event = { "BufReadPost", "BufNewFile" },
	-- 	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	-- 	build = ":TSUpdate",
	-- 	opts = function()
	-- 		return require("plugins.lang.tree-sitter-config")
	-- 	end,

	-- 	-- config = function(_, opts)
	-- 	-- 	require("nvim-treesitter").setup(opts)
	-- 	-- end,
	-- },
	-- {
	-- 	"numToStr/Comment.nvim",
	-- 	lazy = true,
	-- 	event = { "BufReadPost", "BufNewFile" },
	-- 	config = function()
	-- 		vim.defer_fn(function()
	-- 			require("Comment").setup()
	-- 		end, 1000)
	-- 	end,
	-- },
	{
		"hrsh7th/nvim-cmp",
		event = "BufReadPre",
		lazy = true,
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				dependencies = "rafamadriz/friendly-snippets",
				opts = { history = true, updateevents = "TextChanged,TextChangedI" },
				config = function(_, opts)
					require("luasnip").config.set_config(opts)
					require("plugins.lang.luasnip-config")
				end,
			},
			{
				"windwp/nvim-autopairs",
				opts = {
					fast_wrap = {},
					disable_filetype = { "TelescopePrompt", "vim" },
				},
				event = "InsertEnter",
				-- config = function(_, opts)
				-- 	require("nvim-autopairs").setup(opts)
				-- end,
			},
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		opts = function()
			return require("plugins.lang.cmp-config")
		end,
	},
	-- {
	-- 	"VonHeikemen/searchbox.nvim",
	-- 	lazy = true,
	-- 	event = "BufReadPre",
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- },
	-- {
	-- 	"stevearc/dressing.nvim",
	-- 	lazy = true,
	-- 	event = "VeryLazy",
	-- 	opts = function()
	-- 		return require("plugins.ui.dressing-config")
	-- 	end,
	-- 	-- config = function(_, opts)
	-- 	-- 	require("dressing").setup(opts)
	-- 	-- end,
	-- },
	-- {
	-- 	"ray-x/lsp_signature.nvim",
	-- 	event = "LspAttach",
	-- 	opts = function()
	-- 		round_borders = { border = "rounded" }
	-- 		return {
	-- 			-- Window mode
	-- 			floating_window = is_enabled, -- Display it as floating window.
	-- 			hi_parameter = "IncSearch", -- Color to highlight floating window.
	-- 			handler_opts = round_borders, -- Window style

	-- 			-- Hint mode
	-- 			hint_enable = false, -- Display it as hint.
	-- 			hint_prefix = "",

	-- 			-- Additionally, you can use <space>ui to toggle inlay hints.
	-- 			toggle_key_flip_floatwin_setting = is_enabled,
	-- 		}
	-- 	end,
	-- 	-- config = function(_, opts)
	-- 	-- 	require("lsp_signature").setup(opts)
	-- 	-- end,
	-- },
	-- {
	-- 	"echasnovski/mini.indentscope",
	-- 	event = { "BufReadPre", "BufNewFile" },
	-- 	opts = {
	-- 		draw = {
	-- 			delay = 0,
	-- 			animation = function()
	-- 				return 0
	-- 			end,
	-- 		},
	-- 		options = { border = "top", try_as_border = true },
	-- 		symbol = "▏",
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("mini.indentscope").setup(opts)

	-- 		-- Disable for certain filetypes
	-- 		vim.api.nvim_create_autocmd({ "FileType" }, {
	-- 			desc = "Disable indentscope for certain filetypes",
	-- 			callback = function()
	-- 				local ignored_filetypes = {
	-- 					"aerial",
	-- 					"dashboard",
	-- 					"help",
	-- 					"lazy",
	-- 					"leetcode.nvim",
	-- 					"mason",
	-- 					"neo-tree",
	-- 					"NvimTree",
	-- 					"neogitstatus",
	-- 					"notify",
	-- 					"startify",
	-- 					"toggleterm",
	-- 					"Trouble",
	-- 					"calltree",
	-- 				}
	-- 				if vim.tbl_contains(ignored_filetypes, vim.bo.filetype) then
	-- 					vim.b.miniindentscope_disable = true
	-- 				end
	-- 			end,
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"filipdutescu/renamer.nvim",
	-- 	event = "BufReadPre",
	-- 	config = function()
	-- 		require("renamer").setup({})
	-- 	end,
	-- },
	-- {
	-- 	"utilyre/barbecue.nvim",
	-- 	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	-- 	dependencies = {
	-- 		"SmiteshP/nvim-navic",
	-- 	},
	-- 	config = function()
	-- 		require("barbecue").setup()
	-- 	end,
	-- },
	-- {
	-- 	"stevearc/aerial.nvim",
	-- 	event = "BufReadPre",
	-- 	opts = function()
	-- 		return require("plugins.lang.aerial-config")
	-- 	end,
	-- 	config = function(_, opts)
	-- 		require("aerial").setup(opts)
	-- 	end,
	-- },
})
