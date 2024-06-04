-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "tokyonight_night"
config.color_scheme = "Night Owl (Gogh)"

config.font = wezterm.font("Monaspace Xenon", {
	weight = 300,
})
config.font_size = 16.0

-- hide tabs
config.hide_tab_bar_if_only_one_tab = true

-- start full screen
config.initial_rows = 50

-- and finally, return the configuration to wezterm
return config
