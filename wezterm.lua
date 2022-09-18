local wezterm = require 'wezterm'
local act = wezterm.action

return {
	default_prog = {'wsl.exe', '~'},
    font = wezterm.font("Operator Mono Book"),
    font_rules = {
        {
            intensity = "Bold",
            font = wezterm.font ("Operator Mono Medium"),
        }
    },
    freetype_load_target = "Light",
	font_size = 12,
    cell_width = 0.9,
	line_height = 1.1,
	color_scheme = "Gruvbox Dark",
	window_background_opacity = 0.95,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
    default_cursor_style = "SteadyUnderline",   
    keys = {
        {
            key = 'b',
            mods = 'CTRL',
            action = act.SplitPane {
                direction = 'Right',
                size = { Percent = 50 },
            },
        },
        {
            key = 'b',
            mods = 'CTRL|SHIFT',
            action = act.SplitPane {
                direction = 'Down',
                size = { Percent = 50 },
            },
        },
        {
            key = 'LeftArrow',
            mods = 'CTRL|SHIFT',
            action = act.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'CTRL|SHIFT',
            action = act.ActivatePaneDirection 'Right',
        },
        {
            key = 'UpArrow',
            mods = 'CTRL|SHIFT',
            action = act.ActivatePaneDirection 'Up',
        },
        {
            key = 'DownArrow',
            mods = 'CTRL|SHIFT',
            action = act.ActivatePaneDirection 'Down',
        },
        {
            key = tostring(1),
            mods = "CTRL",
            action = act.ActivateTab(0),
        },
        {
            key = "RightArrow",
            mods = "CTRL",
            action = act.ActivateTabRelative(1),
        },
        {
            key = "LeftArrow",
            mods = "CTRL",
            action = act.ActivateTabRelative(-1),
        }
    }
}
