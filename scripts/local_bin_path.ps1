#Import Functions
. .\functions.ps1

# Ensure folder exists
createFolder -newpath "$env:USERPROFILE\.local\bin"

# Add $HOME\.local\bin to $PATH
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process pwsh.exe -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}
$oldPath = ([Environment]::GetEnvironmentVariable("PATH")).Split(";")
$newPath = ($oldPath + "$env:USERPROFILE\.local\bin") -Join ";"
[Environment]::SetEnvironmentVariable("PATH", $newPath, [EnvironmentVariableTarget]::Machine)
