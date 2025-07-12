Start-BitsTransfer https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe $env:TMP\VCppAIO.exe
Start-Process -FilePath "$env:TMP\VCppAIO.exe" -ArgumentList "/ai /gm2" -Wait
Remove-Item $env:TMP\VCppAIO.exe
