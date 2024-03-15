' Show touch keyboard in taskbar always
Set WshShell = CreateObject("WScript.Shell")
'WshShell.RegWrite "HKCU\Software\Microsoft\TabletTip\1.7\KeyboardLayoutPreference", 0, "REG_DWORD"
'WshShell.RegWrite "HKU\Software\Microsoft\TabletTip\1.7\EnableDesktopModeAutoInvoke", 1, "REG_DWORD"
'WshShell.RegWrite "HKCU\Software\Microsoft\TabletTip\1.7\TipbandDesiredVisibility", 1, "REG_DWORD"
'WshShell.RegWrite "HKCU\Software\Microsoft\TabletTip\1.7\UserKeyboardScalingFactor", 125, "REG_DWORD"

' Hide Search icon
'WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\SearchboxTaskbarMode", 0, "REG_DWORD"

' Disable Task View button
'WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowTaskViewButton", 0, "REG_DWORD"

' Disable Widgets button
'WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDa", 0, "REG_DWORD"

' Disable Chat icon
'WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarMn", 0, "REG_DWORD"
