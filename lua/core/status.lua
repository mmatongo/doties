local api = vim.api

local modes = {
	["n"] = "NORMAL",
	["no"] = "NORMAL",
	["v"] = "VISUAL",
	["V"] = "VISUAL LINE",
	[""] = "VISUAL BLOCK",
	["s"] = "SELECT",
	["S"] = "SELECT LINE",
	[""] = "SELECT BLOCK",
	["i"] = "INSERT",
	["ic"] = "INSERT",
	["R"] = "REPLACE",
	["Rv"] = "VISUAL REPLACE",
	["c"] = "COMMAND",
	["cv"] = "VIM EX",
	["ce"] = "EX",
	["r"] = "PROMPT",
	["rm"] = "MOAR",
	["r?"] = "CONFIRM",
	["!"] = "SHELL",
	["t"] = "TERMINAL",
}

local function color()
	local mode = api.nvim_get_mode().mode
	local mode_color = "%#Normal#"
	if mode == "n" then
		mode_color = "%#StatusNormal#"
	elseif mode == "i" or mode == "ic" then
		mode_color = "%#StatusInsert#"
	elseif mode == "v" or mode == "V" or mode == "" then
		mode_color = "%#StatusVisual#"
	elseif mode == "R" then
		mode_color = "%#StatusReplace#"
	elseif mode == "c" then
		mode_color = "%#StatusCommand#"
	elseif mode == "t" then
		mode_color = "%#StatusTerminal#"
	end
	return mode_color
end

-- StatusLine Modes
Statusline = {}

Statusline.active = function()
	return table.concat({
		color(), -- mode colors
		string.format(" %s ", modes[api.nvim_get_mode().mode]):upper(), -- mode
		"%#Normal#", -- middle color
		" %f ", -- file name
		"%=", -- right align
		" %Y ", -- file type
		color(), -- mode colors
		" %l:%c ", -- line, column
	})
end

function Statusline.inactive()
	return "%#StatusInactive# %f "
end

function Statusline.short()
	return "%#Normal#"
end

vim.cmd([[
  augroup Statusline
    au!
    " Set the status line for the active window
    au WinEnter,BufEnter * if &ft != 'NvimTree' && &ft != 'SidebarNvim' && &ft != 'Veil' && &ft != 'Vista' && &ft != 'terminal' | setlocal statusline=%!v:lua.Statusline.active() | endif
    " Set the inactive status line for other windows
    au WinLeave,BufLeave * if &ft != 'NvimTree' && &ft != 'SidebarNvim' && &ft != 'Veil' && &ft != 'Vista' && &ft != 'terminal' | setlocal statusline=%!v:lua.Statusline.inactive() | endif
    " Set a short status line for NvimTree and terminal
    au FileType NvimTree,SidebarNvim,Veil,terminal setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]])
