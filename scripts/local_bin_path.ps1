if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process pwsh.exe -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}
$oldPath = ([Environment]::GetEnvironmentVariable("PATH")).Split(";")
$newPath = ($oldPath + "$env:USERPROFILE\.local\bin") -Join ";"
[Environment]::SetEnvironmentVariable("PATH", $newPath, [EnvironmentVariableTarget]::Machine)
