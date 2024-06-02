return {
	"goolord/alpha-nvim",
	lazy = true,
	event = "BufWinEnter",
	cmd = "Alpha",
	opts = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local fortune = require("alpha.fortune")

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

		dashboard.section.footer.val = fortune()
		-- dashboard.section.footer.opts.hl = "@alpha.footer"

		table.insert(dashboard.config.layout, 5, {
			type = "padding",
			val = 1,
		})

		return dashboard.opts
	end,
}
