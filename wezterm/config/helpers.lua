local wezterm = require("wezterm")
local module = {}

function module.is_macos()
    return wezterm.target_triple:find("apple") ~= nil
end

function module.primary_key()
    if module.is_macos() then
        return "CMD"
    else
        return "CTRL"
    end
end

return module
