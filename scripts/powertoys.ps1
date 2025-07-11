# Import functions
. .\functions.ps1

# Install Powershell Module for WinGet Client for "Command Not Found"
Install-Module -Name Microsoft.WinGet.Client

# Call createFolder function to create config directories
createFolder -newpath "$env:LOCALAPPDATA\Microsoft\PowerToys\"
createFolder -newpath "$env:LOCALAPPDATA\Microsoft\PowerToys\FancyZones\"
createFolder -newpath "$env:LOCALAPPDATA\Microsoft\PowerToys\Keyboard Manager"
createFolder -newpath "$env:LOCALAPPDATA\Microsoft\PowerToys\Measure Tool"

# Call createHardLink function to create hardlinks to config files
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\settings.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\settings.json"
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\FancyZones\custom-layouts.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\FancyZones\custom-layouts.json"
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\FancyZones\layout-hotkeys.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\FancyZones\layout-hotkeys.json"
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\FancyZones\settings.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\FancyZones\settings.json"
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\Keyboard Manager\default.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\Keyboard Manager\default.json"
createHardLink -link "$env:LOCALAPPDATA\Microsoft\PowerToys\Measure Tool\settings.json" -file "..\userprofile\AppData\Local\Microsoft\PowerToys\Measure Tool\settings.json"

# Install PowerToys through winget
winget install Microsoft.PowerToys
