local wezterm = require("wezterm")
local helpers = require("helpers")
local primaryKey = helpers.primary_key()

local keys = {
  {
    key = "P",
    mods = primaryKey,
    action = wezterm.action.ActivateCommandPalette,
  },
  {
    key = "LeftArrow",
    mods = primaryKey .. "|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Left",
  },
  {
    key = "RightArrow",
    mods = primaryKey .. "|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Right",
  },
  {
    key = "UpArrow",
    mods = primaryKey .. "|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Up",
  },
  {
    key = "DownArrow",
    mods = primaryKey .. "|SHIFT",
    action = wezterm.action.ActivatePaneDirection "Down",
  },
  { key = 'Backspace', mods = 'CTRL', action = wezterm.action.SendKey { key = 'Backspace', mods = 'ALT' } },
  { key = 'Backspace', mods = 'CTRL', action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' } }
}

-- Mac OS X jump forward/backward by word
if helpers.is_macos then
  table.insert(keys, {
    key = "LeftArrow",
    mods = "OPT",
    action = wezterm.action { SendString = "\x1bb" },
  })
  table.insert(keys, {
    key = "RightArrow",
    mods = "OPT",
    action = wezterm.action { SendString = "\x1bf" },
  })
end

-- CTRL+ALT + number to activate that tab
for i = 1, 9 do
  table.insert(keys, {
    key = tostring(i),
    mods = "CTRL",
    action = wezterm.action.ActivateTab(i - 1),
  })
end

return keys
