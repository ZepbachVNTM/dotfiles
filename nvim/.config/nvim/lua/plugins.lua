local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nanotee/nvim-lua-guide'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'glepnir/galaxyline.nvim'
  use 'romgrk/barbar.nvim'
  use 'luochen1990/rainbow'
  use 'glepnir/dashboard-nvim'
  use 'terrortylor/nvim-comment'
  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  use 'voldikss/vim-floaterm'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'nvim-lua/completion-nvim'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'onsails/lspkind-nvim'

  use 'jiangmiao/auto-pairs'
  use 'hrsh7th/vim-vsnip'
  use 'neoclide/coc.nvim'
  use {"akinsho/nvim-toggleterm.lua"}
  use 'alvan/vim-closetag'
  
  -- Whichkey
  -- Lua
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'b3nj5m1n/kommentary'
  use 'metakirby5/codi.vim'
  use 'JamshedVesuna/vim-markdown-preview'
  use 'instant-markdown/vim-instant-markdown'
end)
