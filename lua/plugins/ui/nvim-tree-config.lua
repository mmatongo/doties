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
	vc("highlight NvimTreeRootFolder guifg=#404040 gui=bold")
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

-- Function to get Git status
local function get_git_status()
	local status = vim.fn.systemlist("git status --porcelain=v1")
	local changes = {}
	for _, line in ipairs(status) do
		if line:match("^ M") or line:match("^ A") or line:match("^ D") or line:match("^ R") or line:match("^ ??") then
			-- Extract the file path from the Git status output
			local file = line:sub(4)
			-- Store the file in the changes table
			table.insert(changes, file)
		end
	end
	return changes
end

-- Call the function to set the default highlights
set_default_highlights()

-- Function to update NvimTree colors based on Git status
-- This doesn't work for some reason (then again, I'm not a Lua expert)
-- TODO: Fix this
local function update_nvim_tree_colors()
	local changes = get_git_status()
	if next(changes) == nil then
		-- No changes, set to default color
		vc("highlight NvimTreeFolderName guifg=#c5c8c6")
	else
		-- Changes detected, set to changed color
		vc("highlight NvimTreeFolderName guifg=#ff9800")
	end
end

-- Autocommands
vc("autocmd BufEnter NvimTree lua update_nvim_tree_colors()")
vc("autocmd Colorscheme * lua set_default_highlights()")
