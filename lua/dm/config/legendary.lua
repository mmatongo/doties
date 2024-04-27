return {
	"mrjones2014/legendary.nvim",
	lazy = true,
	event = "BufReadPre",
	opts = function()
		opts = { noremap = true, silent = true }

		-- Key mappings configuration
		keymaps = {
			{ "<C-s>", ":write<CR>", description = "Save File", mode = "n", opts = opts },
			{ "<C-q>", ":q!<CR>", description = "Quit without Saving", mode = "n", opts = opts },
			{ "<C-x>", ":quit<CR>", description = "Quit", mode = "n", opts = opts },
			{ "<C-e>", ":lua minimal()<CR>", description = "Toggle Minimal UI", mode = "n", opts = opts },
			{ "<C-a>", ":tabnew<CR>", description = "New Tab", mode = "n", opts = opts },
			{ "<C-n>", ":NvimTreeToggle<CR>", description = "Toggle Nvim Tree", mode = "n", opts = opts },
			{ "<TAB>", ":tabnext<CR>", description = "Next Tab", mode = "n", opts = opts },
			{ "<C-k>", ":ALEFix<CR>", description = "Fix with ALE", mode = "n", opts = opts },
			{ "<C-v>", ":Legendary.find<CR>", description = "Toggle Legendary", mode = "n", opts = opts },
			-- Telescope
			{ "<C-f>", ":Telescope find_files<CR>", description = "Find Files", mode = "n", opts = opts },
			{ "<C-g>", ":Telescope live_grep<CR>", description = "Live Grep", mode = "n", opts = opts },
			{ "<C-w>", ":Telescope file_browser<CR>", description = "File Browser", mode = "n", opts = opts },
			{ "<C-h>", ":Telescope help_tags<CR>", description = "Help Tags", mode = "n", opts = opts },
			{ "<C-p>", ":Telescope git_files<CR>", description = "Git Files", mode = "n", opts = opts },
			{ "<C-t>", ":Telescope treesitter<CR>", description = "Treesitter", mode = "n", opts = opts },
			{ "<C-b>", ":Telescope buffers<CR>", description = "Buffers", mode = "n", opts = opts },
			{ "<C-c>", ":Telescope commands<CR>", description = "Commands", mode = "n", opts = opts },
			{ "<C-u>", ":Telescope undo<CR>", description = "Undo", mode = "n", opts = opts },

			-- Other configurations
			{ "<C-j>", ":OtherVSplit<CR>", description = "Other Split", mode = "n", opts = opts },
			{ "<C-[>", ":Mason<CR>", description = "Mason", mode = "n", opts = opts },
			-- Neovide specific mappings
			{ "<D-v>", '"+p<CR>', description = "Paste from Clipboard", mode = "", opts = opts }, -- Adjust modes as needed
			-- Clear enter mapping
			{ "<CR>", "<NOP>", description = "Disable Enter", mode = "n", opts = opts },
			{ "<ESC>", "<NOP>", description = "Disable ESC", mode = "n", opts = opts },
		}

		commands = {
			{ ":SaveAndRealoadFile", ":w | :so %", description = "Saves and re-sources the file into Neovim" },
			{ ":ReloadNeoCode", ":so ~/.config/nvim/init.lua", description = "Reloads the Neovim configuration" },
		}

		options = {
			-- Include builtins by default, set to false to disable
			include_builtin = true,
			-- Customize the prompt that appears on your vim.ui.select() handler
			select_prompt = "Legendary",
			-- Initial keymaps to bind
			keymaps = keymaps,
			-- Initial commands to create
			commands = commands,
			-- Automatically add which-key tables to legendary
			-- when you call `require('which-key').register()`
			-- for this to work, you must call `require('legendary').setup()`
			-- before any calls to `require('which-key').register()`, and
			-- which-key.nvim must be loaded when you call `require('legendary').setup()`
			auto_register_which_key = false,
		}
		return options
	end,
	config = function(_, opts)
		require("legendary").setup(opts)
	end,
}
