return require('packer').startup(function(use)
  -- Basic deps
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- styles
  use 'nvim-treesitter/nvim-treesitter'
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- completion and stuff
  use 'neovim/nvim-lspconfig'
  use 'windwp/nvim-autopairs'
end)
