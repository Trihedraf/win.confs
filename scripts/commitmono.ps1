if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process pwsh.exe -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}
Start-BitsTransfer https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CommitMono.zip $env:TMP\CommitMono.zip
Expand-Archive -Path $env:TMP\CommitMono.zip -DestinationPath $env:SystemRoot\Fonts\ -Force
reg import ..\files\commitmono.reg
Remove-Item $env:TMP\CommitMono.zip
