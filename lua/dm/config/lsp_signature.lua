return {
	"ray-x/lsp_signature.nvim",
	event = "LspAttach",
	opts = function()
		round_borders = { border = "rounded" }
		return {
			-- Window mode
			floating_window = is_enabled, -- Display it as floating window.
			hi_parameter = "IncSearch", -- Color to highlight floating window.
			handler_opts = round_borders, -- Window style

			-- Hint mode
			hint_enable = false, -- Display it as hint.
			hint_prefix = "",

			-- Additionally, you can use <space>ui to toggle inlay hints.
			toggle_key_flip_floatwin_setting = is_enabled,
		}
	end,
}
