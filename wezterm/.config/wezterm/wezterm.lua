local wezterm = require("wezterm")

local config = {
	status_update_interval = 800,
	-- font
	font = wezterm.font("Monofur Nerd Font Mono", { weight = "Regular", italic = false }),
	warn_about_missing_glyphs = false,
	-- colors
	color_scheme = "nord",
	-- appearance
	enable_tab_bar = false,
	adjust_window_size_when_changing_font_size = false,
	window_background_opacity = 0.8,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
	cursor_blink_rate = 400,
	scrollback_lines = 10000,
}
if string.match(wezterm.target_triple, "darwin") then
	config.font_size = 20.0
end
if string.match(wezterm.target_triple, "windows") then
	config.font_size = 15.0
	config["default_prog"] = { "wsl.exe" }
end
if string.match(wezterm.target_triple, "linux") then
	config.font_size = 16.0
end

return config
