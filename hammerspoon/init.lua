-- https://moriso.hatenablog.com/entry/2022/03/20/175922
local application = require("hs.application")
local spaces = require("hs.spaces")

local double_press = require("optDoublePress")

local open_wezterm = function()
  local appName = "WezTerm"
  local app = hs.application.get(appName)

  if app == nil then
    hs.application.launchOrFocus(appName)
  elseif app:isFrontmost() then
    app:hide()
  else
    local active_space = spaces.focusedSpace()
    local app_win = app:focusedWindow()
    spaces.moveWindowToSpace(app_win, active_space)
    app:setFrontmost()
  end
end

double_press.timeFrame = 0.5
double_press.action = open_wezterm

