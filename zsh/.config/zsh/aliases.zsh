#!/bin/sh
alias j="z"
alias f="zi"
alias lz="lazygit"
alias nvimrc='nvim ~/.config/nvim/'
alias win="sudo efibootmgr --bootnext 0000 && reboot"

alias nv="nvim"
alias nvd="neovide"
alias lv="lvim"

if [ $(command -v live-server) ]; then
	alias live="live-server"
fi

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias cl='clear'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# For when keys break
alias archlinx-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"

# systemd
alias mach_list_systemctl="systemctl list-unit-files --state=enabled"

if command -v exa &> /dev/null; then
  alias ll="exa --icons -la --group-directories-first"
  alias la="exa --icons -a --group-directories-first"
fi
