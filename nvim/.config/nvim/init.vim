" Source
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/config.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/dashboard.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/comment.vim
source $HOME/.config/nvim/plug-config/multiple-cursors.vim
source $HOME/.config/nvim/plug-config/nvimtree.vim

lua require'init'

if t:is_transparent
  hi Normal guibg=NONE ctermbg=NONE
else
  hi Normal guibg=#1D2127 ctermbg=NONE
endif
