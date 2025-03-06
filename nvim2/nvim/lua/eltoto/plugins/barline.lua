return {
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require('lualine').setup {
          options = {
            icons_enabled = true,
            -- theme = 'gruvbox',
            theme = 'everforest',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
              statusline = {},
              winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = true,
            refresh = {
              statusline = 1000,
              tabline = 1000,
              winbar = 1000,
            }
          },
          sections = {
            lualine_a = {'mode', 'FugitiveHead'},
            lualine_b = {'branch', 'diff'},
            lualine_c = {'filename',
                        {
                            require("noice").api.statusline.mode.get,
                            cond = require("noice").api.statusline.mode.has,
                            color = { fg = "#ff9e64" },
                        }
                    },
            lualine_x = {'encoding', 'fileformat', 'filetype',
                        {
                            'diagnostics',
                            icons_enabled = true,
                            sources = { 'nvim_lsp'},
                            -- Displays diagnostics for the defined severity types
                            sections = { 'error', 'warn', 'info', 'hint' },

                            diagnostics_color = {
                                -- Same values as the general color option can be used here.
                                error = 'DiagnosticError', -- Changes diagnostics' error color.
                                warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
                                info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
                                hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
                            },
                            -- symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                            colored = true,           -- Displays diagnostics status in color if set to true.
                            update_in_insert = false, -- Update diagnostics in insert mode.
                            always_visible = true,   -- Show diagnostics even if there are none.
                        }
            },
            lualine_y = {'progress'},
            lualine_z = {'location'}
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
          },
          tabline = {
                    lualine_a = {'buffers'},
                    lualine_b = {'branch'},
                    -- lualine_c = {'filename'},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {'tabs'}
                },
          winbar = {},
          inactive_winbar = {},
          extensions = {'quickfix', 'fugitive', 'mason', 'lazy'}
        }
    end

    }
}
