-- cmp config

local present, cmp = pcall(require, "cmp")
local lspkind = require("lspkind")

if not present then
	return
end

cmp_ui = {
	icons = true,
	lspkind_text = true,
	style = "default",
}

local field_arrangement = {
	atom = { "kind", "abbr", "menu" },
	atom_colored = { "kind", "abbr", "menu" },
}

local formatting_style = {
	-- default fields order i.e completion word + item.kind + item.kind icons
	fields = field_arrangement[cmp_ui.style] or { "abbr", "kind", "menu" },

	format = function(_, item)
		local icons = lspkind.presets.default
		local icon = (cmp_ui.icons and icons[item.kind]) or ""

		item.kind = string.format("%s %s", icon, cmp_ui.lspkind_text and item.kind or "")

		return item
	end,
}

local function border(hl_name)
	return {
		{ "╭", hl_name },
		{ "─", hl_name },
		{ "╮", hl_name },
		{ "│", hl_name },
		{ "╯", hl_name },
		{ "─", hl_name },
		{ "╰", hl_name },
		{ "│", hl_name },
	}
end

local options = {
	completion = {
		completeopt = "menu,menuone",
	},

	window = {
		completion = {
			side_padding = 1,
			winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
			scrollbar = false,
		},
		documentation = {
			border = border("CmpDocBorder"),
			winhighlight = "Normal:CmpDoc",
		},
	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	formatting = formatting_style,

	mapping = {
		["<Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<CR>"] = function(fallback)
			if cmp.visible() then
				cmp.confirm()
			else
				fallback()
			end
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "nvim_lua" },
		{ name = "path" },
	},
}

options.window.completion.border = border("CmpBorder")

return options
