-- init.lua

-- General settings, key mappings, etc.
local core_modules = {
	"core.mappings",
	"core.settings",
	"core.options",
	"core.lazy.plugins",
}

-- Load core configurations
for _, module in ipairs(core_modules) do
	local ok, err = pcall(require, module)
	if not ok then
		error("Error loading module: " .. module .. "\n" .. err)
	end
end

