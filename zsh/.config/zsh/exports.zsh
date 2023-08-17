#!/bin/sh

# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# eval "`pip completion --zsh`"
eval "$(zoxide init zsh)"
source /usr/share/nvm/init-nvm.sh
