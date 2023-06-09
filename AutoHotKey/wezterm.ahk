Alt::
  ApplicationBinaryName=wezterm-gui.exe
  ApplicationBinaryPath="C:\Program Files\WezTerm\wezterm-gui.exe"

  Keywait, Alt, U
  Keywait, Alt, D, T0.2
  if (ErrorLevel=1)
  {
    Send, {Alt}
    Exit
  }

  Process, Exist, %ApplicationBinaryName%
  if ErrorLevel=0
  {
    Run, %ApplicationBinaryPath%, %A_WorkingDir%
    WinWait, ahk_exe %ApplicationBinaryName%
    WinActivate, ahk_exe %ApplicationBinaryName%
    Exit
  }

  WinGet, WinState, MinMax, ahk_exe %ApplicationBinaryName%
  if WinState=-1
  {
    WinActivate, ahk_exe %ApplicationBinaryName%
  }
  else
  {
    WinMinimize, ahk_exe %ApplicationBinaryName%
  }

  return
