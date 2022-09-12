-- tokyoooo
vim.cmd[[colorscheme tokyonight]]
require("tokyonight").setup({
  style = "night",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },
  transparent = true,
})

-- gruvbox
-- vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])
