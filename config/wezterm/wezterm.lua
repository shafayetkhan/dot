-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--- config.color_scheme = "tokyonight"
config.color_scheme = "Catppuccin Mocha"
-- enable_tab_baxr = false
config.font_size = 16.0
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.window_background_opacity = 1.0
config.macos_window_background_blur = 30

config.keys = {
	{
		key = "f",
		mods = "CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}
-- and finally, return the configuration to wezterm
return config
