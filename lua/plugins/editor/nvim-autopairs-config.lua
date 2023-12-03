-- nvim-autopairs config

local present, autopairs = pcall(require, "nvim-autopairs")

if not present then
	return
end

autopairs.setup({
	-- ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", ""),
	ignored_next_char = "",
	map_c_w = true,
})
