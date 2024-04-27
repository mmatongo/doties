local fn = vim.fn
local vc = vim.cmd
local opt = vim.opt
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, "lazy")
if not ok then
	return
end

lazy.setup({
	spec = {
		{ import = "dm.config" },
	},
	defaults = {
		lazy = false,
	},
	checker = { enabled = false }, -- automatically check for plugin updates
	change_detection = {
		enabled = true,
		notify = true,
	},
})
