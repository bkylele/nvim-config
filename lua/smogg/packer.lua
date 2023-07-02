-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'preservim/nerdtree'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use {
        'nvim-orgmode/orgmode', config = function()
            require('orgmode').setup{}
        end,
        requires = {{'akinsho/org-bullets.nvim'}}
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required

            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        'catppuccin/nvim',
        as = 'catppuccin'
    }

    -- use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-surround')
    use('tpope/vim-commentary')

    use('jbyuki/venn.nvim')
    use('dhruvasagar/vim-table-mode')
    use('lukas-reineke/headlines.nvim')

    use('seandewar/nvimesweeper')
    use('ThePrimeagen/vim-be-good')
    use('eandrju/cellular-automaton.nvim')

    use('lervag/vimtex')



  end)
