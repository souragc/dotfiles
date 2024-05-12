-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = {}

config = wezterm.config_builder()

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
  config.default_prog = { "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"}
end
config.color_scheme = 'tokyonight_night'
config.tab_bar_at_bottom = false
config.font = wezterm.font("Hack NF", {weight="Regular"})
config.font_size = 10

config.window_padding = {
  left = 2,
  right = 2,
  top = 4,
  bottom = 0,
}

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.95

-- Keybinds

local act = wezterm.action

config.window_close_confirmation = 'AlwaysPrompt'
config.keys = {
  
  {
    key = "-",
    mods = "ALT",
    action = act.SplitVertical {domain = "CurrentPaneDomain"},
  },

  {
    key = "]",
    mods = "ALT",
    action = act.SplitHorizontal {domain = "CurrentPaneDomain"},
  },
  {
    key = "q",
    mods = "ALT|SHIFT",
    action = act.CloseCurrentPane {confirm = true},
  },
  {
    key = "t",
    mods = "ALT|SHIFT",
    action = act.SpawnTab 'CurrentPaneDomain'
  },
  {
    key = "w",
    mods = "ALT|SHIFT",
    action = act.SpawnWindow,
  },
    {
    key = 'LeftArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Down',
  },
}


return config
