return  {
    {'hrsh7th/nvim-cmp',
    dependencies = {
            "hrsh7th/cmp-cmdline"
        },
    config = function()
        local cmp = require('cmp')
        -- local lsp_zero = require('lsp-zero')
            --
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
          preselect=true,
          completion = {
            completeopt = 'menu,menuone,noinsert'
          },
          sources = cmp.config.sources({
                    {name = 'pylsp'},
                    {name = 'nvim_lsp'},
                    {name = 'nvim_lua'},
                    {name = 'luasnip'},
                    {name = 'buffer'},
                    {name = 'path'},
                    {
                        name = 'cmdline',
                        option = {
                            ignore_cmds = { 'Man', '!' }
                        }
                    }
                }),
          -- formatting = lsp_zero.cmp_format(),
          mapping =  cmp.mapping.preset.insert({
            ['<C-Space>'] = cmp.mapping.confirm({select = true}),
            ['<Esc>'] = cmp.mapping.abort(),
            ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-p>'] = cmp.mapping(function()
              if cmp.visible() then
                cmp.select_prev_item({behavior = 'insert'})
              else
                cmp.complete()
              end
            end),
            ['<C-n>'] = cmp.mapping(function()
              if cmp.visible() then
                cmp.select_next_item({behavior = 'insert'})
              else
                cmp.complete()
              end
            end),
          }),
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
        })
    end
    }
}

