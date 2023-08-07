if !exists('g:loaded_cmp') | finish | endif
if !exists('g:lspkind') | finish | endif

set completeopt=menuone,noinsert,noselect

lua <<EOF
  local cmp = require'cmp'
  local lspkind = require'lspkind'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    }),
    formatting = {
      format = lspkind.cmp_format({with_text = false, maxwidth = 50})
    }
  })

  vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
EOF
