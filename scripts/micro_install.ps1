# Latest github release URL
$latest = 'https://github.com/zyedidia/micro/releases/latest'

# Get version of latest release
$request = [System.Net.WebRequest]::Create($latest)
$response = $request.GetResponse()
$tagNum = $response.ResponseUri.OriginalString
$version = $tagNum.split('/')[-1].Trim('v')

# Set name of file, folder and url with version
$fileName = "micro-$version-win64.zip"
$extractedfolder = "micro-$version"
$dlUrl = $tagNum.Replace('tag', 'download') + '/' + $fileName

# Download latest release
Start-BitsTransfer $dlUrl $env:TMP\$fileName

# Extract relase
Expand-Archive -Path $env:TMP\$fileName -DestinationPath $env:TMP\

# Move exe to ~\.local\bin
Move-Item -Path $env:TMP\$extractedfolder\micro.exe -Destination $env:USERPROFILE\.local\bin\

# Clean up
Remove-Item $env:TMP\$fileName
Remove-Item -Recurse $env:TMP\$extractedfolder

# Add ~/.local/bin to path
.\local_bin_path.ps1

# Import functions
. .\functions.ps1

# Call createFolder function to create config directories
createFolder -newpath "$env:USERPROFILE\.config\micro"

# Call createHardLink function to create hardlinks to config files
createHardLink -link "$env:USERPROFILE\.config\micro\settings.json" -file "..\.config\micro\settings.json"
