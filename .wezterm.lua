local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- theme config
config.color_scheme = 'MaterialDesignColors'
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
}

return config
