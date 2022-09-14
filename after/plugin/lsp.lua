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
end

-- golang
-- gofmt and goimport on save
require("go").setup()
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
require('lspconfig')['gopls'].setup{
  on_attach = on_attach,
}

-- lua
require('lspconfig')['luau_lsp'].setup{
  on_attach = on_attach,
}

-- yaml
require('lspconfig')['yamlls'].setup{
  on_attach = on_attach,
  settings = {
    yaml = {
      schemas = {
        -- kubernetes
        kubernetes = {
          "deployment.yaml",
          "deployment-patch.yaml",
          "patch.yaml",
          "cronjob.yaml",
          "cronjob-patch.yaml",
          "ingress.yaml",
          "service.yaml",
          "namespace.yaml",
          "hpa.yaml"
        },
        ["http://json.schemastore.org/kustomization"] = "kustomization.yaml",
        -- github workflows
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        -- azure pipelines
        ["https://dev.azure.com/finorun/_apis/distributedtask/yamlschema?api-version=5.1"] = {"azure-pipelines.yaml, azure-pipelines.yml"},
      },
    },
  },
}

