return require('packer').startup(function(use)
  -- Basic must haves
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }
  use 'tpope/vim-commentary'

  -- git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- styles
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow'
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'edeneast/nightfox.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  -- completion and stuff
	use {
		'neovim/nvim-lspconfig',
		requires = {
			use 'hrsh7th/cmp-nvim-lsp',
			use 'hrsh7th/cmp-buffer',
			use 'hrsh7th/cmp-path',
			use 'hrsh7th/cmp-cmdline',
			use 'hrsh7th/nvim-cmp',
			use 'hrsh7th/cmp-vsnip',
			use 'hrsh7th/vim-vsnip',
      use 'ray-x/lsp_signature.nvim'
		}
	}
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'

	use 'windwp/nvim-autopairs'
end)
