local vc = vim.cmd
local present, nvimtree = pcall(require, "nvim-tree")

if not present then
	return
end

local colors = {
    lightest_gray = "#E5E5E5",
    light_gray = "#CCCCCC",
    white = "#F1F1F1",
    dark_red = "#C30771",
    medium_gray = "#767676",
    light_green = "#5FD7A7",
    orange = "#D75F5F",
}


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
-- local function set_default_highlights()
-- 	vc("highlight NvimTreeNormal guibg=none guifg=#b0b0b0")
-- 	vc("highlight NvimTreeFolderName guifg=#c5c8c6")
-- 	vc("highlight NvimTreeRootFolder guifg=#e0e0e0" .. " gui=bold")
-- 	vc("highlight NvimTreeExecFile guifg=#d7ebba")
-- 	vc("highlight NvimTreeSpecialFile guifg=#d7ebba")
-- 	vc("highlight NvimTreeFolderIcon guifg=#f47174")
-- 	vc("highlight NvimTreeGitDirty guifg=#d75f5f")
-- 	vc("highlight NvimTreeGitStaged guifg=#ff9800")
-- 	vc("highlight NvimTreeGitMerge guifg=#c5c8c6")
-- 	vc("highlight NvimTreeGitRenamed guifg=#f47174")
-- 	vc("highlight NvimTreeGitNew guifg=#b8bb26")
-- 	vc("highlight NvimTreeGitDeleted guifg=#d75f5f")
-- 	vc("highlight NvimTreeSpecialFile guifg=#c5c8c6")
-- end

-- local function set_default_highlights()
-- 	vc("highlight NvimTreeNormal guibg=none guifg=#E5E5E5")
-- 	vc("highlight NvimTreeFolderName guifg=#c5c8c6")
-- 	vc("highlight NvimTreeRootFolder guifg=#c5c8c6" .. " gui=bold")
-- 	vc("highlight NvimTreeExecFile guifg=#F1F1F1")
-- 	vc("highlight NvimTreeFolderIcon guifg=#f47174")
-- 	vc("highlight NvimTreeIndentMarker guifg=#4B5263")
-- 	vc("highlight NvimTreeGitDirty guifg=#d75f5f")
-- 	vc("highlight NvimTreeGitStaged guifg=#5FD7A7")
-- 	vc("highlight NvimTreeGitMerge guifg=#ff9800")
-- 	vc("highlight NvimTreeGitRenamed guifg=#5FD7A7")
-- 	vc("highlight NvimTreeGitNew guifg=#5FD7A7")
-- 	vc("highlight NvimTreeGitDeleted guifg=#d75f5f")
-- 	vc("highlight NvimTreeSpecialFile guifg=#5FD7A7")
-- end

-- local function set_default_highlights()
--     vc("highlight NvimTreeNormal guifg=#d0d0d0")
--     vc("highlight NvimTreeFolderName guifg=#b3b3b3")
--     vc("highlight NvimTreeRootFolder guifg=#b3b3b3 gui=bold")
--     vc("highlight NvimTreeExecFile guifg=#e0e0e0")
--     vc("highlight NvimTreeFolderIcon guifg=#d75f5f")
--     vc("highlight NvimTreeIndentMarker guifg=#606060")
--     vc("highlight NvimTreeGitDirty guifg=#d75f5f")
--     vc("highlight NvimTreeGitStaged guifg=#5fd7a7")
--     vc("highlight NvimTreeGitMerge guifg=#ffaf00")
--     vc("highlight NvimTreeGitRenamed guifg=#5fd7a7")
--     vc("highlight NvimTreeGitNew guifg=#5fd7a7")
--     vc("highlight NvimTreeGitDeleted guifg=#d75f5f")
--     vc("highlight NvimTreeSpecialFile guifg=#5fd7a7")
-- end

local function set_default_highlights()
    vc("highlight NvimTreeNormal guibg=none guifg=" .. colors.lightest_gray)
    vc("highlight NvimTreeFolderName guifg=" .. colors.light_gray)
    vc("highlight NvimTreeRootFolder guifg=" .. colors.light_gray .. " gui=bold")
    vc("highlight NvimTreeExecFile guifg=" .. colors.white)
    vc("highlight NvimTreeFolderIcon guifg=" .. colors.dark_red)
    vc("highlight NvimTreeIndentMarker guifg=" .. colors.medium_gray)
    vc("highlight NvimTreeGitDirty guifg=" .. colors.orange)
    vc("highlight NvimTreeGitStaged guifg=" .. colors.light_green)
    vc("highlight NvimTreeGitMerge guifg=" .. colors.orange) -- Adjust as needed
    vc("highlight NvimTreeGitRenamed guifg=" .. colors.light_green)
    vc("highlight NvimTreeGitNew guifg=" .. colors.light_green)
    vc("highlight NvimTreeGitDeleted guifg=" .. colors.orange)
    vc("highlight NvimTreeSpecialFile guifg=" .. colors.light_green)
end



set_default_highlights()
