function asAd {
  param (
    [string]$command
  )

  Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command $command" -Verb RunAs -WindowStyle Hidden
}

function link
{
  param (
    [string]$targetPath,
    [string]$linkPath
  )
  asAd("New-Item -ItemType SymbolicLink -Path $linkPath -Target $targetPath")
  Write-Host "Symbolic link created at: $linkPath"
}

link -targetPath $HOME/dotfiles/powershell -linkPath $HOME/.config/powershell
link -targetPath $HOME/dotfiles/lazygit -linkPath $HOME/.config/lazygit
