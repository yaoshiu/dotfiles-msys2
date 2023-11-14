local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Macchiato"

config.default_prog = {
	"C:/msys64/msys2_shell.cmd",
	"-defterm",
	"-here",
	"-no-start",
	"-clang64",
	"-shell",
	"zsh",
}
config.default_cwd = "C:/msys64/home/yaosh"

config.launch_menu = {
	{
		label = "MSYS2/CLANG64",
		args = {
			"C:/msys64/msys2_shell.cmd",
			"-defterm",
			"-here",
			"-no-start",
			"-clang64",
			"-shell",
			"zsh",
		},
	},
	{
		label = "PowerShell",
		args = {
			"powershell.exe",
		},
	},
}

config.font = wezterm.font({
	family = "Maple Mono NF",
	harfbuzz_features = {
		"cv02",
		"ss01",
		"ss02",
		"ss03",
		"ss04",
		"ss05",
	},
})
config.font_size = 12

config.use_fancy_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

config.window_padding = {
	top = 24,
	bottom = 24,
	left = 24,
	right = 24,
}

return config
