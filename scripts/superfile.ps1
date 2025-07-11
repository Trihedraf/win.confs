# Import functions
. .\functions.ps1

# Call createFolder function to create config directories
createFolder -newpath "$env:LOCALAPPDATA\superfile\"

# Call createHardLink function to create hardlinks to config files
createHardLink -link "$env:LOCALAPPDATA\superfile\config.toml" -file "..\.config\superfile\config.toml"
createHardLink -link "$env:LOCALAPPDATA\superfile\hotkeys.toml" -file "..\.config\superfile\hotkeys.toml"
createHardLink -link "$env:LOCALAPPDATA\superfile\toggleDotFile" -file "..\.config\superfile\toggleDotFile"

powershell -ExecutionPolicy Bypass -Command "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://superfile.netlify.app/install.ps1'))"
