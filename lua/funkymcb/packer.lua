return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- styles
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'
end)
