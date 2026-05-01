Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.54.0.windows.1/PortableGit-2.54.0-64-bit.7z.exe" -OutFile "$env:TEMP\PortableGit.exe"
New-Item -ItemType Directory -Path "$env:USERPROFILE\PortableGit" -Force
& "$env:TEMP\PortableGit.exe" /DIR="$env:USERPROFILE\PortableGit"
$env:PATH += ";$env:USERPROFILE\PortableGit\bin"
git --version