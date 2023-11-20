-- init.lua

-- General settings, key mappings, etc.
local general_modules = {
  'opts',
  'mappings',
--   'colors',
  'status',
  'settings',
  'plugin-config'
}

-- Load general configurations
for _, module in ipairs(general_modules) do
    local ok, err = pcall(require, module)
    if not ok then
        error("Error loading module: " .. module .. "\n" .. err)
    end
end

-- Function to dynamically load plugins configurations
local function load_plugins(directory)
    local config_path = vim.fn.stdpath('config')
    local plugin_dir = config_path .. '/' .. directory
    local files = vim.fn.readdir(plugin_dir)

    for _, file in ipairs(files) do
        if file:match('%.lua$') then  -- Only include .lua files
            local filepath = plugin_dir .. '/' .. file
            local ok, err = pcall(dofile, filepath)
            if not ok then
                error("Error loading plugin file: " .. filepath .. "\n" .. err)
            end
        end
    end
end

-- Dynamically load plugins configurations
load_plugins('lua/plugins')
