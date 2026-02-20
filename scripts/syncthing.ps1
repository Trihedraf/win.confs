$fileName = "syncthing-windows-setup.exe"
$pathFile = Join-Path $env:TEMP $fileName

Start-BitsTransfer -Source https://github.com/Bill-Stewart/SyncthingWindowsSetup/releases/latest/download/syncthing-windows-setup.exe -Destination $pathFile

Start-Process -FilePath $pathFile -ArgumentList "/allusers", "/silent" -Wait

Remove-Item -Path $pathFile
