-- cmp config

local present, cmp = pcall(require, "cmp")
local lspkind = require("lspkind")

if not present then
	return
end

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
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
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	}, {
		{ name = 'buffer' },
	}),
	formatting = {
	    format = lspkind.cmp_format({
			mode = 'symbol',
			maxwidth = 50,
		})
		-- format = function(entry, vim_item)
		-- 	vim_item.kind = lspkind.presets.default[vim_item.kind]

		-- 	vim_item.menu = ({
		-- 		nvim_lsp = "[LSP]",
		-- 		luasnip = "[LuaSnip]",
		-- 		buffer = "[Buffer]",
		-- 	})[entry.source.name]

		-- 	return vim_item
		-- end
	}
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "git" },
	}, {
		{ name = "buffer" },
	}),
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(":", {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = cmp.config.sources({
-- 		{ name = "path" },
-- 	}, {
-- 		{ name = "cmdline" },
-- 	}),
-- })
