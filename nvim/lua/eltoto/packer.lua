-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'rstacruz/vim-closer'
  use 'jbyuki/one-small-step-for-vimkind'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "puremourning/vimspector"}
  -- use {
  --     "puremourning/vimspector",
  --     cmd = { "VimspectorInstall", "VimspectorUpdate" },
  --     fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
  --     config = function()
  --       require("config.vimspector").setup()
  --   end,
  --   }
  use { "ellisonleao/gruvbox.nvim" }
  use('dense-analysis/ale')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('jremmen/vim-ripgrep')
  use('vim-utils/vim-man')
  use('Yggdroot/indentLine')
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')
  use('tmhedberg/SimpylFold')
  -- use('williamboman/mason.nvim')
  -- use('williamboman/mason-lspconfig.nvim')
  use{
  'VonHeikemen/lsp-zero.nvim',
  requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }
  -- lua vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
  use('neovim/nvim-lspconfig')

end)
