local wezterm = require("wezterm")
local colors = {
    -- background = '#151515',
    background = '#000000',
    foreground = '#b7b7b7',
    cursor_border = '#AAAAAA',
    ansi = {
        '#0c0d0e',
        '#e31a1c',
        '#31a354',
        '#dca060',
        '#24628f',
        '#756bb1',
        '#178da0',
        '#b7b8b9',
    },
    brights = {
        '#737475',
        '#e31a1c',
        '#31a354',
        '#dca060',
        '#24628f',
        '#756bb1',
        '#178da0',
        '#fcfdfe',
    },
    tab_bar = {
        -- The color of the inactive tab bar edge/divider
        inactive_tab_edge = '#0A0A0A',
        background = '#000000',
        active_tab = {
            bg_color = '#0A0A0A',
            fg_color = '#eee',
        },
        inactive_tab = {
            bg_color = '#050505',
            fg_color = '#808080',
        },
    },
}

return colors
