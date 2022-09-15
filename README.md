# My Neovim configuratoin

## Get this config running
- Clone this Repo (Copy the files) to `~/.config/nvim/`
- Install [neovim](https://github.com/neovim/neovim) >= 0.7.0
- Install [Packer Plugin Manager](https://github.com/wbthomason/packer.nvim)
    ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
- Run: `:PackerInstall`
- Make sure to use a [patched font](https://www.nerdfonts.com/) in your terminal
- Install Language Servers:
    - [gopls](https://github.com/golang/tools/tree/master/gopls)
    - [luau_lsp](https://github.com/JohnnyMorganz/luau-lsp)
    - [marksman](https://github.com/artempyanykh/marksman)
    - [yamlls](https://github.com/redhat-developer/yaml-language-server)

## Plugins used

### Basic must haves
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)

### Code Completion
- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [lsp_signature](https://github.com/ray-x/lsp_signature.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [guihua.lua](https://github.com/ray-x/guihua.lua)

#### Go specific
- [go.nvim](https://github.com/ray-x/go.nvim)

### Git
- [fugitive](https://github.com/tpope/vim-fugitive)
- [gitgutter](https://github.com/airblade/vim-gitgutter)

### Plugin Manager
- [Packer](https://github.com/wbthomason/packer.nvim)

### Stylez
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
- [nightfox](https://github.com/EdenEast/nightfox.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
