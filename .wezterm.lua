local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'AdventureTime'
config.font = wezterm.font("Scientifica Nerd Font", {weight="Medium", stretch="Normal", style="Normal"})
config.font_rules = { {
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

return config
