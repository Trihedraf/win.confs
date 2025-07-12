# Import functions
. .\functions.ps1

# Install winget packages
wi -pkg Open-Shell.Open-Shell-Menu -arg0 --interactive

# Install winget packages silently
wis -pkg 7zip.7zip
wis -pkg Amazon.Corretto.11.JDK
wis -pkg Amazon.Corretto.17.JDK
wis -pkg Amazon.Corretto.21.JDK
wis -pkg Amazon.Corretto.8.JDK
wis -pkg AntibodySoftware.WizFile
wis -pkg AntibodySoftware.WizTree
wis -pkg Apple.iTunes
wis -pkg BlenderFoundation.Blender
wis -pkg Brave.Brave
wis -pkg Discord.Discord
wis -pkg dotPDN.PaintDotNet
wis -pkg GIMP.GIMP.3
wis -pkg Git.Git
wis -pkg GitHub.cli
wis -pkg GitHub.GitHubDesktop
wis -pkg Gyan.FFmpeg
wis -pkg HandBrake.HandBrake
wis -pkg HeroicGamesLauncher.HeroicGamesLauncher
wis -pkg Inkscape.Inkscape
wis -pkg Insecure.Nmap
wis -pkg IrfanSkiljan.IrfanView
wis -pkg KeePassXCTeam.KeePassXC
wis -pkg LIGHTNINGUK.ImgBurn
wis -pkg Microsoft.DotNet.DesktopRuntime.3_1
wis -pkg Microsoft.DotNet.DesktopRuntime.5
wis -pkg Microsoft.DotNet.DesktopRuntime.6
wis -pkg Microsoft.DotNet.DesktopRuntime.7
wis -pkg Microsoft.DotNet.DesktopRuntime.8
wis -pkg Microsoft.DotNet.DesktopRuntime.9
wis -pkg Microsoft.PowerShell
wis -pkg Microsoft.VisualStudio.2022.Community
wis -pkg Microsoft.VisualStudioCode -arg0 --override -arg1 '/VERYSILENT /mergetasks="!runcode,addcontextmenufiles,addcontextmenufolders"' -arg2 --force
wis -pkg Microsoft.WindowsTerminal
wis -pkg MoonlightGameStreamingProject.Moonlight
wis -pkg namazso.OpenHashTab
wis -pkg Obsidian.Obsidian
wis -pkg OBSProject.OBSStudio
wis -pkg OpenSCAD.OpenSCAD
wis -pkg Oracle.VirtualBox
wis -pkg RamenSoftware.Windhawk
wis -pkg RARLab.WinRAR
wis -pkg RustDesk.RustDesk
wis -pkg SergeySerkov.TagScanner
wis -pkg sharkdp.bat
wis -pkg StefanSundin.Superf4
wis -pkg SyncTrayzor.SyncTrayzor
wis -pkg Tailscale.Tailscale
wis -pkg TheDocumentFoundation.LibreOffice
wis -pkg Valve.Steam
wis -pkg VideoLAN.VLC
wis -pkg WinMerge.WinMerge
wis -pkg WinSCP.WinSCP
wis -pkg yt-dlp.yt-dlp
