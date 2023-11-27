local wezterm = require("wezterm")

local colors = require("colors")
local keys = require("keys")

return {
  check_for_updates = false,
  front_end = "OpenGL",
  font = wezterm.font("Cascadia Mono"),
  force_reverse_video_cursor = true,
  enable_tab_bar = true,
  tab_bar_at_bottom = false,
  show_tab_index_in_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  colors = colors,
  default_cursor_style = "BlinkingBar",
  adjust_window_size_when_changing_font_size = false,
  window_padding = {
    top = "18px",
    left = "18px",
    right = "18px",
    bottom = "18px",
  },
  window_frame = {
    font = wezterm.font("Cascadia Mono"),
    active_titlebar_bg = "#050505",
    inactive_titlebar_bg = "#0A0A0A",
  },
  command_palette_selection_color = "#463199",
  command_palette_bg_color = "#212121",
  keys = keys,
  ssh_domains = {
    {
      -- This name identifies the domain
      name = "zebserv",
      -- The hostname or address to connect to. Will be used to match settings
      -- from your ssh config file
      remote_address = "zebserv",
      -- The username to use on the remote host
      username = "zeb",
    },
    {
      -- This name identifies the domain
      name = "desktop",
      -- The hostname or address to connect to. Will be used to match settings
      -- from your ssh config file
      remote_address = "192.168.0.35",
      -- The username to use on the remote host
      username = "zeb",
    },
  },
}
