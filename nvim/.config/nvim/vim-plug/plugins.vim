" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Theme
  Plug 'joshdick/onedark.vim'

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " Keeping up to date with master
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

  " Nvim tree
  Plug 'kyazdani42/nvim-web-devicons' " for file icons  
  Plug 'kyazdani42/nvim-tree.lua'

  " Air line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'  

  " Whichkey
  Plug 'folke/which-key.nvim'

  " Float terminal
  Plug 'voldikss/vim-floaterm'

  " Dashboard
  Plug 'glepnir/dashboard-nvim'

  " Telescope
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/plenary.nvim'

  " Project nvim
  Plug 'ahmedkhalf/project.nvim'

  " auto close tag
  Plug 'alvan/vim-closetag'

  " Vim comment
  Plug 'terrortylor/nvim-comment'

  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'

  " Rainbow
  Plug 'junegunn/rainbow_parentheses.vim'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  " Codi
  Plug 'metakirby5/codi.vim'

  " Multiple cursors
  Plug 'terryma/vim-multiple-cursors'

  " Vim tmux
  Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \ |  PlugInstall --sync | q
  \ | endif
