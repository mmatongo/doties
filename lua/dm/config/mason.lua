return {
	"williamboman/mason.nvim",
	cmd = { "Mason", "MasonInstall", "MasonUpdate" },
	event = { "InsertEnter" },
    enabled = function()
        return vim.fn.executable("Mason") == 0
    end,
    opts = function()
        return {
            -- install_root_dir = vim.fn.stdpath("data") .. "/mason"

            install_root_dir =  vim.fn.stdpath("data") .. "/mason",
            PATH = "prepend",
            log_level = vim.log.levels.INFO,
            max_concurrent_installers = 10,
            registries = {
                "github:mason-org/mason-registry",
            },
            providers = {
                "mason.providers.registry-api",
                "mason.providers.client",
            },
            github = {
                download_url_template = "https://github.com/%s/releases/download/%s/%s",
            },
            pip = {
                upgrade_pip = false,
                install_args = {},
            },
            ui = {
                check_outdated_packages_on_open = true,
                border = "rounded",
                width = 0.8,
                height = 0.9,
                keymaps = {
                    toggle_package_expand = "<CR>",
                    install_package = "i",
                    update_package = "u",
                    check_package_version = "c",
                    update_all_packages = "U",
                    check_outdated_packages = "C",
                    uninstall_package = "X",
                    cancel_installation = "<C-c>",
                    apply_language_filter = "<C-f>",
                    toggle_package_install_log = "<CR>",
                    toggle_help = "g?",
                },
            },
        }
    end,
	config = function(_, opts)
		require("mason").setup(opts)

		require("mason-lspconfig").setup({
			ensure_installed = {
				"gopls",
				"rubocop",
				"golangci_lint_ls",
			},
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")

		lspconfig.gopls.setup({})
		lspconfig.golangci_lint_ls.setup({})
		lspconfig.rubocop.setup({})
	end,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
}
