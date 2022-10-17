-- gitgutter
vim.g.gitgutter_map_keys = 0 -- needed since <leader>h gets slow
vim.g.gitgutter_highlight_linenrs = 1

-- nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- BUG would love to set this to 0, but there is a bug with nvim-cmp
-- hide command line
vim.o.cmdheight = 1
