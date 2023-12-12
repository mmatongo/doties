-- init.lua

-- General settings, key mappings, etc.
local core_modules = {
	"core.mappings",
	"core.status",
	"core.settings",
	"core.packer.plugins",
}

-- Load core configurations
for _, module in ipairs(core_modules) do
	local ok, err = pcall(require, module)
	if not ok then
		error("Error loading module: " .. module .. "\n" .. err)
	end
end

-- dynamically load plugins configurations, including from subdirectories
local function load_plugins(directory)
	local config_path = vim.fn.stdpath("config")
	local plugin_dir = config_path .. "/" .. directory
	local scan_directory

	scan_directory = function(dir)
		local files = vim.fn.readdir(dir)

		for _, file in ipairs(files) do
			local fullpath = dir .. "/" .. file
			if vim.fn.isdirectory(fullpath) == 1 then
				-- It's a directory, scan it recursively
				scan_directory(fullpath)
			elseif file:match("%.lua$") then -- Only include .lua files
				local ok, err = pcall(dofile, fullpath)
				if not ok then
					error("Error loading plugin file: " .. fullpath .. "\n" .. err)
				end
			end
		end
	end

	-- Start scanning from the root plugin directory
	scan_directory(plugin_dir)
end

-- Dynamically load plugins configurations
load_plugins("lua/plugins")
