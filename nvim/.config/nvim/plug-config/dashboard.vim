let g:dashboard_custom_header = [
  \'███████ ██    ██ ██ ███    ███ ', 
  \'   ███  ██    ██ ██ ████  ████ ',
  \'  ███   ██    ██ ██ ██ ████ ██ ',
  \' ███     ██  ██  ██ ██  ██  ██ ',
  \'███████   ████   ██ ██      ██ ',
  \ ]
let g:dashboard_default_executive = 'telescope'
let g:dashboard_custom_section = {
  \ 'a': {
  \   'description': ['  Find File          '],
  \   'command': 'Telescope find_files'
  \ }, 
  \ 'b': {
  \   'description': ['  Recent Projects    '],
  \   'command': 'Telescope projects'
  \ },
  \ 'c': {
  \   'description': ['  Recently Used Files'],
  \   'command': 'Telescope oldfiles'
  \ },
  \ 'd': {
  \   'description': ['  Find Word          '],
  \   'command': 'Telescope live_grep'
  \ },
  \ 'e': {
  \   'description': ['  Configuration      '],
  \   'command': ':e ~/.config/nvim/general/config.vim',
  \ }
  \ }

let g:dashboard_custom_footer = ['John Bernie    ']
