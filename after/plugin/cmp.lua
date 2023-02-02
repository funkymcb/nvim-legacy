local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require'cmp'

cmp.setup({
   snippet = {
      expand = function(args)
         require('luasnip').lsp_expand(args.body)
      end,
   },

   window = {
      documentation = cmp.config.window.bordered(),
   },

   mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.select_next_item({
         behavior = cmp.SelectBehavior.Insert,
      }),
      ['<S-Tab>'] = cmp.mapping.select_prev_item({
         behavior = cmp.SelectBehavior.Insert,
      }),
      ['<C-u>'] = cmp.mapping.scroll_docs(-4),
      ['<C-d>'] = cmp.mapping.scroll_docs(4),
      ['<Left>'] = cmp.mapping.abort(),
      ['<C-c>'] = cmp.mapping.close(),
      ['<C-l>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({
         behavior = cmp.ConfirmBehavior.Insert,
         select = true,
      }),
   }),

   sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'path', },
   }, {
      {
         name = 'buffer',
         option = {
            keyword_length = 3,
         },
      },
   }),

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    }),

   cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
         { name = 'path', },
         { name = 'cmdline' },
      })
   })
})

cmp.event:on(
'confirm_done',
cmp_autopairs.on_confirm_done()
)

-- SNIPPETS!!!
require("luasnip.loaders.from_vscode").lazy_load()
