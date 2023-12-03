-- luasnip config

local present, luasnip_loaders = pcall(require, "luasnip.loaders.from_vscode")

if not present then
	return
end

luasnip_loaders.load()
