-- vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#303030 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#404040 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#505050 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#606060 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#707070 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#808080 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#909090 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent8 guifg=#9a9a9a gui=nocombine]]
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
    "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
    "IndentBlanklineIndent8",
  },
}
