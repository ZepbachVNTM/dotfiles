command! -nargs=0 Tsc    :CocCommand tsserver.watchBuild

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Coc Plugins
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-spell-checker',
  \ 'coc-emmet',
  \ 'coc-lua',
  \ 'coc-clangd',
  \ 'coc-clang-format-style-options',
  \ 'coc-cmake',
  \ 'coc-css',
  \ 'coc-html',
  \ '@yaegassy/coc-intelephense',
  \ 'coc-vimlsp',
  \ 'coc-phpls',
  \ 'coc-stylelint',
  \ 'coc-python',
  \ 'coc-pyright',
  \ 'coc-java',
  \ 'coc-marketplace'
  \ ]
