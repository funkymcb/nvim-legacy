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

-- Set up lspconfig capabilities
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport  = true

-- golang
-- gofmt and goimport on save
require("go").setup()
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
require('lspconfig')['gopls'].setup{
   on_attach = on_attach,
   capabilities = capabilities,
}

-- html
require('lspconfig')['html'].setup{
   on_attach = on_attach,
   capabilities = capabilities,
}

-- trouble to install jsonls
-- require('jsonls')['jsonls'].setup{
--    on_attach = on_attach,
--    capabilities = capabilities,
-- }

-- lua
require('lspconfig')['sumneko_lua'].setup{
   settings = {
      -- these settings increase lsp initialization for lua files
      -- disable for non neovim lua development (is this even a thing?)
      Lua = {
         runtime = {
            version = 'LuaJIT',
         },
         diagnostic = {
            globals = {'vim'},
         },
         workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
         },
         telemetry = {
            enable = false,
         },
      },
   },
   on_attach = on_attach,
   capabilities = capabilities,
}

-- markdown
require('lspconfig')['marksman'].setup{
   on_attach = on_attach,
   capabilities = capabilities,
}

-- rust
require('lspconfig')['rust_analyzer'].setup{
   on_attach = on_attach,
   capabilities = capabilities, 
}

-- yaml
require('lspconfig')['yamlls'].setup{
   on_attach = on_attach,
   capabilities = capabilities,

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

