require('plugins')
require('themes.dashboard')

-- General
require('general.default-settings')
require('settings')
require('keymappings')
require('general.colorscheme')

-- Plugin
require('core.colorizer')
require('core.galaxyline')
require('core.treesitter')
require('core.dashboard')
require('core.vim-comment')
require('core.toggle-terminal')
require('core.whichkey')
require('core.coc-extensions')
require('core.nvim-tree')
require('core.codi')

-- LSP
--[[ require('lsp')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.js-ts-ls') ]]
-- require('lsp.efm-general-ls') 
