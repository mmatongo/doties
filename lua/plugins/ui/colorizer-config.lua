-- colorizer config

local present, colorizer = pcall(require, "colorizer")

if not present then
	return
end

colorizer.setup({
	"css",
	"javascript",
	"typescript",
	"lua",
	"html",
	"rust",
	"ruby",
	html = {
		mode = "foreground",
	},
}, {
	RGB = true,
	RRGGBB = true,
	names = true,
	RRGGBBAA = true,
	rgb_fn = true,
	hsl_fn = true,
	css = true,
	css_fn = true,
})
