-- treesitter config

options = {
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
	ensure_installed = {
		"bash",
		"css",
		"go",
		"html",
		"json",
		"lua",
		"python",
		"ruby",
		"rust",
		"toml",
		"yaml",
		"gotmpl",
	},
	sync_install = false,
	auto_install = true,
	ignore_install = { "javascript" },

	highlight = {
		enable = true,
		disable = {
			"css",
			"scss",
		},
		additional_vim_regex_highlighting = false,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["is"] = { query = "@statement.inner", desc = "statement" },
				["as"] = { query = "@statement.outer", desc = "statement" },
				["ic"] = { query = "@class.inner", desc = "class" },
				["ac"] = { query = "@class.outer", desc = "class" },
				["iF"] = { query = "@function.inner", desc = "function" },
				["aF"] = { query = "@function.outer", desc = "function" },
			},
			selection_modes = {
				["@parameter.outer"] = "v",
				-- ["@function.outer"] = "V",
				["@class.outer"] = "<c-v>",
			},
		},
		swap = {
			enable = true,
		},
		move = {
			enable = true,
			goto_next_start = {
				["]f"] = { query = "@function.outer", desc = "function" },
				["]c"] = { query = "@call.outer", desc = "call" },
			},
			goto_previous_start = {
				["[f"] = { query = "@function.outer", desc = "function" },
				["[c"] = { query = "@call.outer", desc = "call" },
			},
		},
	},
}

return options
