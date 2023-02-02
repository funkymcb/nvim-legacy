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

   -- git
   use 'tpope/vim-fugitive'
   use 'airblade/vim-gitgutter'

   -- styles
   use 'nvim-treesitter/nvim-treesitter'
   use 'p00f/nvim-ts-rainbow'
   use 'edeneast/nightfox.nvim'
   use 'nvim-lualine/lualine.nvim'
   use 'lukas-reineke/indent-blankline.nvim'

   -- completion and stuff
   use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
         'neovim/nvim-lspconfig',
         'williamboman/mason.nvim',
         'williamboman/mason-lspconfig.nvim',
         'hrsh7th/nvim-cmp',
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/cmp-buffer',
         'hrsh7th/cmp-path',
         'hrsh7th/cmp-cmdline',
         'saadparwaiz1/cmp_luasnip',
         'hrsh7th/cmp-nvim-lsp',
         'hrsh7th/cmp-nvim-lua',
         'L3MON4D3/LuaSnip',
         'rafamadriz/friendly-snippets',
         'ray-x/lsp_signature.nvim',
         'windwp/nvim-autopairs',
      }
   }
   use 'ray-x/go.nvim'
   use 'ray-x/guihua.lua'
   use 'tpope/vim-commentary'

   -- debugging
   use 'mfussenegger/nvim-dap'
   use 'rcarriga/nvim-dap-ui'
   -- neovim lua
   use 'jbyuki/one-small-step-for-vimkind'

   -- fun fun fun
   use 'eandrju/cellular-automaton.nvim'

   -- local developing
   -- use '~/Coding/github.com/funkymcb/nvim-rest-client'
   -- use this after release:
   -- use 'funkymcb/nvim-rest-client'
end)
