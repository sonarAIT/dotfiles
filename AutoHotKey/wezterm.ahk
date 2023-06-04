ApplicationBinaryName=wezterm-gui.exe
ApplicationBinaryPath="C:\Program Files\WezTerm\wezterm-gui.exe"

Alt::
  Keywait, Alt, U
  Keywait, Alt, D, T0.2
  If (ErrorLevel=1)
    Send, {Alt}
  else
    Process, Exist, %ApplicationBinaryName%
    if ErrorLevel<>0
      WinActivate, ahk_pid %ErrorLevel%
    else
      Run, %ApplicationBinaryPath%
      Process, Exist, %ApplicationBinaryName%
      if ErrorLevel<>0
        WinActivate, ahk_pid %ErrorLevel%

  return
