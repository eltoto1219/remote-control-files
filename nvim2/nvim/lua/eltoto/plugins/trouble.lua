return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
 config=function ()
        vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
        vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
        vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
        vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
        vim.keymap.set("n", "<leader>x]", function() require("trouble").toggle("loclist") end)
        -- vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
        vim.keymap.set("n", "]d", function() require("trouble").next({skip_groups = true, jump = true}) end)
        vim.keymap.set("n", "[d", function() require("trouble").previous({skip_groups = true, jump = true}) end, {nowait=true})
        -- vim.keymap.set("n", ']d', function() vim.diagnostics.goto_next() end)
        -- vim.keymap.set("n", '[d', function() vim.diagnostics.goto_prev() end)


 end
}
