vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"
    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
            {'rafamadriz/friendly-snippets'},
        }
    }
    -- File and folder management
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-fzy-native.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")
    use("ThePrimeagen/harpoon")
    use {
        "jiaoshijie/undotree",
        require = {
            {"nvim-lua/plenary.nvim"}
        }
    }
    use {
              'nvim-treesitter/nvim-treesitter',
              run = function()
                  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                  ts_update()
              end,}
    use("nvim-treesitter/nvim-treesitter-context")
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    -- dart
    use("dart-lang/dart-vim-plugin")
    use("mhartington/formatter.nvim")
    use("tpope/vim-fugitive")
    use("numToStr/Comment.nvim")
    use("github/copilot.vim")
    use("Neevash/awesome-flutter-snippets")
    -- progress
    use { "j-hui/fidget.nvim", tag = "legacy" }
    use("f-person/auto-dark-mode.nvim")
    use { "rose-pine/neovim", as="rose-pine" }
  
  end)
  