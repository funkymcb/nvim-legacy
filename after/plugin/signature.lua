-- signature setup (floating window over function completion)
  require'lsp_signature'.setup({
    bind = true,
    handler_opts = {
      border = "rounded"
    }
  }, bufnr)
