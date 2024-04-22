local fn = vim.fn
local cmd = vim.cmd
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
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		dependencies = { "projekt0n/circles.nvim", "kyazdani42/nvim-web-devicons" },
		opts = function()
			return require("plugins.ui.nvim-tree-config")
		end,
		config = function(_, opts)
			require("nvim-tree").setup(opts)
			require("circles").setup()
		end,
	},
	{ "nvim-lua/plenary.nvim" },
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		ops = function()
			return require("plugins.editor.gitsigns-config")
		end,
		config = function(_, opts)
			require("gitsigns").setup(opts)
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		opts = function()
			return require("plugins.misc.toggleterm-config")
		end,
		config = function(_, opts)
			require("toggleterm").setup(opts)
		end,
		cmd = "ToggleTerm",
		event = "BufReadPre",
	},
	{
		"dense-analysis/ale",
		event = "VeryLazy",
	},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		event = "VeryLazy",
		priority = 100,
		opts = function()
			return require("plugins.tools.mason-config")
		end,
		config = function(_, opts)
			require("mason").setup(opts)
		end,
	},
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup()
		end,
		event = "VeryLazy",
	},
	{
		"rgroli/other.nvim",
		event = "BufReadPre",
		opts = function()
			return require("plugins.editor.other-config")
		end,
		config = function(_, opts)
			require("other-nvim").setup(opts)
		end,
	},
	{
		"m-demare/hlargs.nvim",
		opts = function()
			return require("plugins.lang.hlargs-config")
		end,
		config = function(_, opts)
			local hlargs = require("hlargs")
			hlargs.setup(opts)
			hlargs.enable()
		end,
		event = "BufRead",
	},
	{
		"mrjones2014/legendary.nvim",
		event = "BufReadPre",
		opts = function()
			return require("plugins.misc.legendary-config")
		end,
		config = function(_, opts)
			require("legendary").setup(opts)
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "BufReadPre",
		opts = function()
			return require("plugins.ui.lualine-config")
		end,
		config = function(_, opts)
			require("lualine").setup(opts)
		end,
	},
	{
        "rcarriga/nvim-notify",
        event = "UiEnter",
        config = function()
            vim.notify = require("notify")
        end,
     },
	{
		"catppuccin/nvim",
		event = "UiEnter",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			cmd("colorscheme catppuccin")
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			require("plugins.ui.alpha-config")
		end,
		event = "UiEnter",
	},
	{
		"romgrk/barbar.nvim",
		lazy = true,
		event = "BufRead",
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			animation = true,
			insert_at_start = true,
			icons = {
				filetype = {
					enabled = false,
				},
			},
		},
		config = function()
			require("barbar").setup(opts)
		end,
	},
	{
		"crusj/structrue-go.nvim",
		branch = "main",
		event = "BufReadPre",
        opts = function()
			return require("plugins.lang.structrue-go-config")
		end,
        config = function(_, opts)
            require("structrue-go").setup(opts)
        end,
	},
	{
		"ray-x/go.nvim",
		dependencies = { "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("go").setup()
		end,
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()',
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"debugloop/telescope-undo.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		event = "VeryLazy",
		opts = function()
			return require("plugins.tools.telescope-config")
		end,
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		build = ":TSUpdate",
		opts = function()
			return require("plugins.lang.tree-sitter-config")
		end,

		config = function(_, opts)
			require("nvim-treesitter").setup(opts)
		end,
	},
	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			vim.defer_fn(function()
				require("Comment").setup()
			end, 1000)
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				dependencies = {
					"rafamadriz/friendly-snippets",
					"saadparwaiz1/cmp_luasnip",
					opts = { history = true, updateevents = "TextChanged,TextChangedI" },
					config = function(_, opts)
						require("luasnip").config.set_config(opts)
						require("plugins.lang.luasnip-config")
					end,
				},
			},
			{
				"windwp/nvim-autopairs",
				opts = {
					fast_wrap = {},
					disable_filetype = { "TelescopePrompt", "vim" },
				},
                event = "InsertEnter",
				config = function(_, opts)
					require("nvim-autopairs").setup(opts)

					local cmp_autopairs = require("nvim-autopairs.completion.cmp")
					require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
				end,
			},
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		opts = function()
			return require("plugins.lang.cmp-config")
		end,
		config = function(_, opts)
			require("cmp").setup(opts)
		end,
	},
	{
		"VonHeikemen/searchbox.nvim",
		event = "BufReadPre",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
	{
        "stevearc/dressing.nvim",
        event = "BufReadPre",
        opts = function()
            return require("plugins.ui.dressing-config")
        end,
        config = function(_, opts)
            require("dressing").setup(opts)
        end,
     },
})
