.\local_bin_path.ps1

# Import functions
. .\functions.ps1

createHardLink -link "$env:USERPROFILE\.local\bin\TaskBarHider.exe" -file "..\.local\bin\taskbar-hider-64\TaskBarHider.exe"
