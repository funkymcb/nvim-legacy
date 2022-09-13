-- tokyoooo
vim.cmd[[colorscheme tokyonight]]
require("tokyonight").setup({
  style = "storm",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    sidebar = "normal",
    floats = "normal",
  },
  transparent = true,
})

-- gruvbox
-- vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])
