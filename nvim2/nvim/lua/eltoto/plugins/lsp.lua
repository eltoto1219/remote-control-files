return {
    {
        "neovim/nvim-lspconfig",
        dependencies={
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
        },
        config = function()
            -- local capabilities = vim.tbl_deep_extend(
            --     "force",
            --     {},
            --     vim.lsp.protocol.make_client_capabilities(),
            --     cmp_lsp.default_capabilities()
            -- )

            local mason = require("mason")
            -- local mason_lsp_config = require("mason-lspconfig")
            mason.setup({})
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pylsp",
                },
                handlers = {
                    function(server_name) -- default handler (optional)

                        require("lspconfig")[server_name].setup {
                            -- capabilities = capabilities
                        }
                    end,

                    pylsp = function()
                        require('lspconfig').pylsp.setup({
                            settings = {
                                configuration_sources={"flake8"},
                                formatCommand={"black"},
                                pylsp = {
                                    plugins = {
                                        jedi_completion = {enabled = true, include_completion=true, include_params=true},
                                        jedi_signature_help = {enabled = true},
                                        jedi_symbols = {enabled = true},
                                        pydocstyle = {
                                            enabled =  true,
                                            ignore = {"D100", "D101", "D102", "D103", "D104", "D105", "D106", "D107", "D200", "D201", "D202", "D203", "D204", "D205", "D206", "D207", "D208", "D209", "D210", "D211", "D212", "D213", "D214", "D215", "D300", "D301", "D302", "D400", "D401", "D402", "D403", "D404", "D405", "D406", "D407", "D408", "D409", "D410", "D411", "D412", "D413", "D414"}
                                        },
                                        --
                                        isort = {enabled = true},
                                        autopep8 = {enabled = true},
                                        flake8 = {enabled = true, ignore={'E203','E741','E501','W503','E402'}, args={"--ignore=E203,E741,E501,W503,E402", "-"}},
                                        --
                                        pylint = {enabled = true, args = {"--ignore=E401,E501,E231", "-"}},
                                        ropecompletion = {enabled = true},
                                        pylsp_mypy={enabled=true},
                                        yapf={enabled=true},
                                        pycodestyle={ enabled=false, ignore={'E501', 'E231'}, maxLineLength=88},
                                        pyflakes = {enabled = false},
                                        mccabe= {enabled =false}
                                    }
                                }
                            }
                        })
                    end,
                    ["lua_ls"] = function()
                        local lspconfig = require("lspconfig")
                        lspconfig.lua_ls.setup {
                            -- capabilities = capabilities,
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim", "it", "describe", "before_each", "after_each" },
                                    }
                                }
                            }
                        }
                    end,
                }
            })

            vim.diagnostic.config({
                -- update_in_insert = true,
                virtualtext=false,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })
        end,
    }
}
