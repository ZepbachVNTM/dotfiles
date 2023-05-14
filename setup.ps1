$ConfigFolder = "$HOME\.config"

if (Test-Path $ConfigFolder) {
  Write-Host "$ConfigFolder already exists! Please remove it first."
}

else {
  Move-Item ./* $ConfigFolder
}
