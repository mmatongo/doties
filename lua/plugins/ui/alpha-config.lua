local present, alpha = pcall(require, "alpha")

if not present then
	return
end

local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	"                                                                                ",
	"                                                                                ",
	"                                 ▀▀          ▀▀▀                                ",
	"                              ▀▄█▄▀▀▀▀▀▀▀▀▀▀▀▄█▄▀                              ",
	"                         ▀▄▄▄███▄▀▀██████████▄▀▄███▄▄▄▀                         ",
	"                      ▀▄▀▀▀▀▀██▄▀▄████▄▀▀▀████▄▀▄██▀▀▀▀▀▄▀                      ",
	"                    ▀▄▄███▄▄▄▄▀▀▄▀▀▀▀▀▄██▄▀▀▀▀▀▄▀▀▄▄▄▄▄▄█▄▄▀                    ",
	"                   ▀██▀▀▀▄███▄██▀▀▄▄ ▄█████ ▀▄▀▀██▄███▄▀▀▀██▀                   ",
	"                   ▄██ ▀ ▄████████▄▄▄██▄▄██▄▄▄████████▄ ▀ ██▄                   ",
	"                ▀▄███▄▀▄▀▄██▄▄███▄    ▀██▀    ▄████▄██▄▀▄▀▄███▄▀                ",
	"                ██▀▀▄▄ ▀▄██▄           ▄▄           ▄██▄▀ ▀▄▀▀██                ",
	"                ▀▀▀▀▄▄▄███▄                          ▄███▄▄▄▀▀▀▀                ",
	"                ▄███████▄▀▀▄▄▄▄▄▄▄▄▄▄▀    ▀▄▄▄▄▄▄▄▄▄▄▀▀▄███████▄                ",
	"                ▄█████▄▀▄▄▄▀▄█████████▄  ▄█████████▄▀▄▄▄▀▄█████▄                ",
	"                ▀▀▀▄███▄▄▄▄██▄▄▄▄▄███▄    ▄███▄▄▄▄▄██▄▄▄▄▄██▄▀▀▀                ",
	"                ▀▄█▄██▄▀   ▄█▄▄▄▄▄▄▀▀▀    ▀▀▀▄▄▄▄▄▄█▄   ▀▄██▄██▀                ",
	"                  ▄████▄▄▄▀         ▀▀    ▀▀         ▀▀▄▄▄███▄                  ",
	"                   ▄█████▄▄▄▀       ▀▀    ▀▀       ▀▄▄▄▄████▄▀                  ",
	"                   ▀██ ██▀▀▄▄▄▄    ▀▄█▄▀▀▄█▄▀    ▀▄▄▄▄▄██ ██▀                   ",
	"                    ▀▄ ██▀  ▀▀   ▀▄▀▄██████▄▀▄▀   ▀▀▄▄▄██ ▀▀                    ",
	"                   ▀▄▄ ██▀       ▀▀▀▀▄████▄▀▀▀▀     ▄▀▀██ ▄▄▀                   ",
	"                       ██▀▀▀▀▄ ▀▄██▄▄▄▄▄▄▄▄▄▄██▄▀ ▄▄▀▀▀██                       ",
	"                       ▄█▄▄▀██▀▀▀▄████▄▄▄▄████▄▀▀▀██▀▄▄█▄                       ",
	"                        ▀█████▀▀▀▄███▄ ▀▀ ▄███▄▀▀▀█████▀                        ",
	"                         ▄███▄ ▀▄▄█▄█  ▄▄    ▀▄▄▀ ▄▄██▄                         ",
	"                         ▄███▄▀▄▄▀███▀▀▄▄▄ ▀▄█▀▄▄▀▄███▄                         ",
	"                         ▄██████▄█████▄  ▄█████▄██████▄                         ",
	"                          ▀▄██▀▄████████████████▄▀██▄▀                          ",
	"                            ▀▀   ▀▄██████████▄▀   ▀▀                            ",
	"                                    ▀ ▀▀▀▀▀▀                                    ",
	"                                                                                ",
	"                                                                                ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":silent :ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find File", ":silent :Telescope find_files<CR>"),
	dashboard.button("r", "󰈚  Recent Files", ":silent :Telescope oldfiles<CR>"),
	dashboard.button("b", "  Bookmarks", ":silent :Telescope marks<CR>"),
	dashboard.button("l", "  Update Plugins", ":silent :Lazy home<CR>"),
	dashboard.button("m", "  Mason", ":silent :Mason<CR>"),
	dashboard.button("s", "  Settings", ":silent :e $MYVIMRC | :cd %:p:h | wincmd k <CR>"),
	dashboard.button("q", "󰗼  Quit NVIM", ":silent :qa<CR>"),
}

local fortune = require("alpha.fortune")

dashboard.section.footer.val = fortune()
-- dashboard.section.footer.opts.hl = "@alpha.footer"

table.insert(dashboard.config.layout, 5, {
	type = "padding",
	val = 1,
})

-- vim.api.nvim_create_autocmd("User", {
-- 	callback = function()
-- 		local stats = require("lazy").stats()
-- 		local ms = math.floor(stats.startuptime * 100) / 100
-- 		dashboard.section.footer.val = "󱐌 Lazy-loaded "
-- 			.. stats.loaded
-- 			.. "/"
-- 			.. stats.count
-- 			.. " plugins in "
-- 			.. ms
-- 			.. "ms"
-- 		pcall(vim.cmd.AlphaRedraw)
-- 	end,
-- })

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
require("alpha").setup(dashboard.opts)
