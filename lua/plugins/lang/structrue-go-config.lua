-- structrue-go config

options = {
	show_others_method = true, -- bool show methods of struct whose not in current file
	show_filename = true, -- bool
	number = "no", -- show number: no | nu | rnu
	fold_open_icon = " ",
	fold_close_icon = " ",
	cursor_symbol_hl = "guibg=Gray guifg=White", -- symbol hl under cursor,
	indent = "┠", -- Hierarchical indent icon, nil or empty will be a tab
	position = "botright", -- window position,default botright,also can set float
	symbol = { -- symbol style
	-- TODO: update the colour scheme to use the same colours as the rest of the theme
		filename = {
			hl = "guifg=#CCCCCC", -- highlight symbol
			icon = " ", -- symbol icon
		},
		package = {
			hl = "guifg=#008EC4",
			icon = " ",
		},
		import = {
			hl = "guifg=#008EC4",
			icon = " ◈ ",
		},
		const = {
			hl = "guifg=#D75F5F",
			icon = " π ",
		},
		variable = {
			hl = "guifg=#10A778",
			icon = " ◈ ",
		},
		func = {
			hl = "guifg=#C30771",
			icon = "  ",
		},
		interface = {
			hl = "guifg=#CCCCCC",
			icon = "❙ ",
		},
		type = {
			hl = "guifg=#CCCCCC",
			icon = "▱ ",
		},
		struct = {
			hl = "guifg=#CCCCCC",
			icon = "❏ ",
		},
		field = {
			hl = "guifg=#E5E5E5",
			icon = " ▪ ",
		},
		method_current = {
			hl = "guifg=#E5E5E5",
			icon = " ƒ ",
		},
		method_others = {
			hl = "guifg=#E5E5E5",
			icon = "  ",
		},
	},
	keymap = {
		toggle = "<leader>m", -- toggle structure-go window
		show_others_method_toggle = "H", -- show or hidden the methods of struct whose not in current file
		symbol_jump = "<CR>", -- jump to then symbol file under cursor
		center_symbol = "\\f", -- Center the highlighted symbol
		fold_toggle = "\\z",
		refresh = "R", -- refresh symbols
		preview_open = "P", -- preview  symbol context open
		preview_close = "\\p", -- preview  symbol context close
	},
	fold = { -- fold symbols
		import = true,
		const = false,
		variable = false,
		type = false,
		interface = false,
		func = false,
	},
}
