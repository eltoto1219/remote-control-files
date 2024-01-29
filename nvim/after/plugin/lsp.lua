local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
--	"eslint",
	-- "pyright"
})

local cmp = require('cmp')
local cmp_select  = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({ sign_icons = {} })
vim.opt.signcolumn = 'yes'


lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


-- lsp.configure('pylsp', {
--   settings = {
--       plugins = {
--           flake8 = {enabled = false},
--           autopep8 = {enabled = false},
--           jedi_completition = {enabled = false},
--           jedi_symbols = {enabled = false},
--           pycodestyle = {enabled = false},
--           pylint = {enabled = false},
--           pyflakes = {enabled = false},
--           ropecompletion = {enabled = false}
--       }

--   }
-- })

vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
-- disables diagnostic text with lsp-zero:
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = false
--     }
-- )
vim.diagnostic.config({virtual_text = false})


lsp.nvim_workspace()
lsp.setup()

require'lspconfig'.pylsp.setup{
    on_attach=(
    function(client, bufnr)
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end),
  settings = {
    pylsp = {
      plugins = {
          flake8 = {enabled = false},
          autopep8 = {enabled = false},
          jedi_completition = {enabled = false},
          jedi_symbols = {enabled = true},
          pycodestyle = {enabled =  false}, -- this gives errors def dont have this
          pydocstyle = {
              enabled =  true,
              ignore = {"D100", "D101", "D102", "D103", "D104", "D105", "D106", "D107", "D200", "D201", "D202", "D203", "D204", "D205", "D206", "D207", "D208", "D209", "D210", "D211", "D212", "D213", "D214", "D215", "D300", "D301", "D302", "D400", "D401", "D402", "D403", "D404", "D405", "D406", "D407", "D408", "D409", "D410", "D411", "D412", "D413", "D414"}
          },
          pylint = {enabled = false},
          pyflakes = {enabled = false},
          ropecompletion = {enabled = false}
      }
    }
  }
}



