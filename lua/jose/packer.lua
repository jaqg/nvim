-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes {{
  use({
          'rose-pine/neovim',
          as = 'rose-pine',
          config = function()
                  vim.cmd('colorscheme rose-pine')
          end
  })
  use({
          'catppuccin/nvim',
          as = 'catppuccin',
          -- config = function()
          --         vim.cmd('colorscheme catppuccin')
          -- end
  })
  use({
          'folke/tokyonight.nvim',
          as = 'tokyonight',
  --         config = function()
  --                 vim.cmd('colorscheme tokyonight')
  --         end
  })
  use({
          'navarasu/onedark.nvim',
          as = 'onedark',
  --         config = function()
  --                 vim.cmd('colorscheme onedarkonedark')
  --         end
  })
  use({
          'savq/melange-nvim',
          as = 'melange',
  --         config = function()
  --                 vim.cmd('colorscheme melange')
  --         end
  })
  use({
          'mcchrish/zenbones.nvim',
          as = 'zenbones',
  --         config = function()
  --                 vim.cmd('colorscheme zenbones')
  --         end
          -- Optionally install Lush. Allows for more configuration or extending the colorscheme
          -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
          -- In Vim, compat mode is turned on as Lush only works in Neovim.
          requires = "rktjmp/lush.nvim"
  })
  -- }}

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'folke/neodev.nvim'}, -- Additional lua configuration, makes nvim stuff amazing
      {'j-hui/fidget.nvim'}, -- Useful status updates for LSP
      {'folke/lsp-colors.nvim'}, -- Creates missing LSP diagnostics highlight groups

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'kdheepak/cmp-latex-symbols'},
      -- {'mstanciu552/cmp-matlab'},
      -- {'mstanciu552/cmp-octave'},

      -- Snippets
      {"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"},
      {'rafamadriz/friendly-snippets'},
      {'SirVer/ultisnips'},
      {'quangnguyen30192/cmp-nvim-ultisnips'},
      -- { "honza/vim-snippets"},
    }
  }

  use("folke/zen-mode.nvim")
  -- use("github/copilot.vim")
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

  use 'lervag/vimtex'

  -- use 'tranvansang/octave.vim'

  use {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  }

  use {
    'Exafunction/codeium.vim',
    -- config = function ()
    --   vim.keymap.set('i', '<C-cr>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    --   vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    --   vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    --   vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    -- end
  }
end)
