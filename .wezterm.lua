-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "tokyonight_night"
-- config.color_scheme = "niji"
-- config.color_scheme = "Numix Darkest (terminal.sexy)"
config.color_scheme = "Catppuccin Mocha" -- or Macchiato, Frappe, Latte
-- config.color_scheme = "Dracula"

config.font = wezterm.font("Monaspace Xenon", {
	weight = 300,
})
config.font_size = 13.0

-- hide tabs
config.hide_tab_bar_if_only_one_tab = true

-- start full screen
config.initial_rows = 54
config.initial_cols = 171

-- Remove window top bar
config.window_decorations = "NONE"

config.native_macos_fullscreen_mode = false
-- local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main
-- config.colors = theme.colors()
-- window_frame = theme.window_frame()
-- and finally, return the configuration to wezterm
return config
