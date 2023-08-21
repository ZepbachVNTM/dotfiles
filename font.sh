font="noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-jetbrains-mono-nerd"

if [ $(command -v paru) ]; then
  paru -Sy $font
else
  echo "Please install Paru first!"
fi
