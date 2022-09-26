vim.cmd [[highlight LspSignatureActiveCustomParameter guifg=#31C236 gui=nocombine]]

-- signature setup (floating window over function completion)
require'lsp_signature'.setup({
   bind = true,
   hint_prefix = "💡 ",
   hi_parameter = "LspSignatureActiveCustomParameter",
   handler_opts = {
      border = "rounded"
   }
}, bufnr)
