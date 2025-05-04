return {
    {    "williamboman/mason.nvim",
        opts = {
            ensure_installed = { "prettier" },
        },
        config = function(_, opts)
            require('mason').setup(opts)
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'eslint', 'ts_ls', }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        opts = function()
            local ret = {
                diagnostics = {
                    underline = true,
                    virtual_text = {
                        spacing = 4,
                        prefix = "●",
                    },
                },
                inlay_hints = {
                    enabled = true,
                }
            }
            return ret
        end,
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            vim.diagnostic.config(opts.diagnostics)
            lspconfig.lua_ls.setup({})
            lspconfig.eslint.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.clangd.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action,{})
        end
    }
}
