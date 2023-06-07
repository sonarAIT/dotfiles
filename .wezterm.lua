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
      mods = "CTRL",
    },
  },
  {
    key = "RightArrow",
    mods = "CMD",
    action = act.SendKey {
      key = "f",
      mods = "CTRL",
    },
  },
  {
    key = "Backspace",
    mods = "CMD",
    action = act.SendKey {
      key = "Backspace",
      mods = "CTRL",
    },
  },
}

return config
