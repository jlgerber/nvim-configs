-- As Seen on this Series
--   https://www.youtube.com/watch?v=iXIwm4mCpuc&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&index=5
-- Snippet Completion Library
--   https://github.com/hrsh7th/nvim-cmp-- Set up nvim-cmp.
-- Community Snippets collection Here:
--   https://github.com/rafamadriz/friendly-snippets
return {
    -- cmp-nvim-lsp uses the lsp protocol to ask for snippet completions from the active language
    -- server. this is in addition to the vscode snippets from friendly-snippets
    -- In order to set this up we have to modify the lsp-config.lua
    {
        'hrsh7th/cmp-nvim-lsp' 
    },
    -- from the nvim-cmp docs. we are using luasnip so we need LuaSnip and cmp_luasnip dependencies
    {
        'L3MON4D3/LuaSnip',
        dependencies = {
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets', -- the actual source of the snippets

        }
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
          local cmp = require'cmp'
          -- begin friendly-snippets setup
          require("luasnip.loaders.from_vscode").lazy_load()
          -- setup done
          cmp.setup({
            snippet = {
              -- REQUIRED - you must specify a snippet engine
              expand = function(args)
                -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
              end,
            },
            window = {
              completion = cmp.config.window.bordered(),
              documentation = cmp.config.window.bordered(),
            },
            -- KEY BINDINGS HERE
            mapping = cmp.mapping.preset.insert({
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
              -- { name = 'nvim_lsp' },
              -- { name = 'vsnip' }, -- For vsnip users.
              { name = 'luasnip' }, -- For luasnip users.
              -- { name = 'ultisnips' }, -- For ultisnips users.
              -- { name = 'snippy' }, -- For snippy users.
            }, {
              { name = 'buffer' },
            })
          })
        end -- end config
    }
}
