local vc = vim.cmd
local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

-- nvim-tree config
nvimtree.setup({
	auto_reload_on_write = true,
	update_cwd = true,
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			glyphs = {
				git = {
					unstaged = "•",
					staged = "•",
					unmerged = "•",
					renamed = "•",
					untracked = "•",
					deleted = "•",
					ignored = "•",
				},
			},
		},
		root_folder_modifier = ":t",
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "•",
			info = "•",
			warning = "•",
			error = "•",
		},
	},
	update_focused_file = {
		enable = true,
		update_root = false,
		ignore_list = { "help" },
	},
	git = {
		enable = true, -- Enables git integration
	},
	filters = {
		dotfiles = true,
	},
	view = {
		width = 40,
	},
})

-- Set default highlights
local function set_default_highlights()
	vc("highlight NvimTreeNormal guibg=none guifg=#b0b0b0")
	vc("highlight NvimTreeFolderName guifg=#c5c8c6")
	vc("highlight NvimTreeRootFolder guifg=#e0e0e0" .. " gui=bold")
	vc("highlight NvimTreeExecFile guifg=#d7ebba")
	vc("highlight NvimTreeSpecialFile guifg=#d7ebba")
	vc("highlight NvimTreeFolderIcon guifg=#f47174")
	vc("highlight NvimTreeGitDirty guifg=#d75f5f")
	vc("highlight NvimTreeGitStaged guifg=#ff9800")
	vc("highlight NvimTreeGitMerge guifg=#c5c8c6")
	vc("highlight NvimTreeGitRenamed guifg=#f47174")
	vc("highlight NvimTreeGitNew guifg=#b8bb26")
	vc("highlight NvimTreeGitDeleted guifg=#d75f5f")
	vc("highlight NvimTreeSpecialFile guifg=#c5c8c6")
end

set_default_highlights()
