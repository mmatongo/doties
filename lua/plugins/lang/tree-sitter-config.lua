-- treesitter config

local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
	return
end

ts_config.setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
		},
	},
	indent = {
		enable = true,
	},
	ensure_installed = "ruby",
	ensure_installed = "go",
	auto_install = true,
	ignore_install = { "javascript" },
})
