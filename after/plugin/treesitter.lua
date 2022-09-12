require("nvim-treesitter.configs").setup({
  ensure_insalled = { all },
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
})
