# dotfiles
![dotfile image](./.github/wallpaper.png)

<h1>What you will need</h1>
<ul>
<li>Python 3</li>
<li><a href="https://github.com/Airblader/i3">i3-gaps</a></li>
<li><a href="https://github.com/jaagr/polybar">Polybar</a></li>
<li><a href="https://github.com/DaveDavenport/rofi">Rofi</a></li>
<li><a href="https://fontawesome.com">Font-Awesome-5</a></li>
<li><a href="https://aur.archlinux.org/packages/nitrogen-git/">Nitrogen</a></li>
<li><a href="https://aur.archlinux.org/packages/nerd-fonts-complete/">nerd-fonts-complete</a></li>
<li><a href="https://github.com/adobe-fonts/source-code-pro">Adobe Source Code Pro font</a></li>
<li><a href="https://wiki.archlinux.org/index.php/Rxvt-unicode">rxvt-unicode</a></li>
<li><a href="https://archlinux.org/packages/extra/x86_64/alsa-utils">alsa-utils</a></li>
<li><a href="https://archlinux.org/packages/community/x86_64/mate-power-manager">mate-power-manager</a></li>
</ul>

<h1>You will install</h1>

## Ubuntu
```bash
sudo apt install python3 python3-pip make nitrogen ninja-build
```
## Arch linux
```bash
sudo pacman -S i3 i3-gaps i3status i3lock xorg-xset xorg-xrandr
```

autotilling
```bash
yay -S autotiling   # AUR only
```

## Installing
You will need `git` and GNU `stow`
Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/ZepbachVNTM/dotfiles.git ~
```

Run `stow` to symlink everything or just select what you want

```bash
stow all # Everything
```

```bash
stow theme\ i3 # Just my i3 config
```
