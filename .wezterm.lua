local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- theme config
config.color_scheme = 'MaterialDesignColors'
config.window_background_opacity = 0.85

-- font config
config.font = wezterm.font("Scientifica Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
config.font_rules = {
  {
    italic = true,
    font = wezterm.font_with_fallback {
      { family = "Scientifica Nerd Font", weight="Medium", stretch="Normal", style="Normal"}
    },
  },
  {
    intensity = "Bold",
    font = wezterm.font_with_fallback {
      { family = "Scientifica Nerd Font", weight="Medium", stretch="Normal", style="Normal"}
    },
  },
}
config.font_size = 16

-- key config
local act = wezterm.action
config.keys = {
  {
    key = "LeftArrow",
    mods = "CMD",
    action = act.SendKey {
      key = "b",
      mods = "META",
    },
  },
  {
    key = "RightArrow",
    mods = "CMD",
    action = act.SendKey {
      key = "f",
      mods = "META",
    },
  },
  {
    key = "Backspace",
    mods = "CMD",
    action = act.SendKey {
      key = "w",
      mods = "CTRL",
    },
  },
  {
    key = "LeftArrow",
    mods = "CTRL",
    action = act.SendKey {
      key = "b",
      mods = "META",
    },
  },
  {
    key = "RightArrow",
    mods = "CTRL",
    action = act.SendKey {
      key = "f",
      mods = "META",
    },
  },
  {
    key = "Backspace",
    mods = "CTRL",
    action = act.SendKey {
      key = "w",
      mods = "CTRL",
    },
  },
  {
    key = 'f',
    mods = 'SHIFT|META',
    action = wezterm.action.ToggleFullScreen,
  },
}

-- always open window in full screen
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

-- tabbar config
config.hide_tab_bar_if_only_one_tab = true

return config
