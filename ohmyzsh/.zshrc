if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode zoxide bun nvm)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export VISUAL=nvim
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

source /usr/share/nvm/init-nvm.sh

if (("$+commands[eza]")); then
  alias ls="eza --icons --group-directories-first"
  alias ll="eza --icons -la --group-directories-first"
  alias la="eza --icons -a --group-directories-first"
fi
alias nv="nvim"
alias nvd="neovide"
alias lz="lazygit"
alias lzd="lazydocker"
alias live="live-server"
alias scrrec="wf-recorder -a -F fps=30 --file=$HOME/Videos/$(date +'%Y-%m-%d-%T')-rec.mp4"

# bun completions
[ -s "/home/akatsuki/.bun/_bun" ] && source "/home/akatsuki/.bun/_bun"

# To customize prompt, run `p10k configure` or edit ~/dotfiles/ohmyzsh/.p10k.zsh.
[[ ! -f ~/dotfiles/ohmyzsh/.p10k.zsh ]] || source ~/dotfiles/ohmyzsh/.p10k.zsh
