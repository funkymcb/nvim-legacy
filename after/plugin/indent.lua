-- vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#464646 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#797979 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#AFC3A0 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#A4A4A4 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#CDCDCD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineCurrentContext guifg=#A2D57C gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#A2D57C  gui=underline]]

vim.opt.list = true

require('indent_blankline').setup {
  context_highlight_list = {
    "IndentBlanklineCurrentContext",
  },
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
  },
}
