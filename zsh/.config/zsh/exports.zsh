#!/bin/sh

HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

export PATH="$HOME/.config/emacs/bin/:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# eval "`pip completion --zsh`"
eval "$(zoxide init zsh)"
export PATH="/home/akatsuki/.local/share/fnm:$PATH"
eval "`fnm env`"

# bun completions
[ -s "/home/akatsuki/.bun/_bun" ] && source "/home/akatsuki/.bun/_bun"
