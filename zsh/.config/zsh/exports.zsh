#!/bin/sh

HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

export PATH="$HOME/.config/emacs/bin/:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# eval "`pip completion --zsh`"
eval "$(zoxide init zsh)"
source /usr/share/nvm/init-nvm.sh
