local opts = { noremap=true, silent=true}
vim.keymap.set('n', '<space>n', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>p', vim.diagnostic.goto_prev, opts)

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<space>d', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<space>gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<space>gi', vim.lsp.buf.implementation, bufopts)

  -- Use LSP as the handler for formatexpr.
  --    See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')

  -- For plugins with an `on_attach` callback, call them here. For example:
  -- require('completion').on_attach()
end

-- golang
require('lspconfig')['gopls'].setup{
  on_attach = on_attach,
}

-- lua
require('lspconfig')['luau_lsp'].setup{
  on_attach = on_attach,
}
