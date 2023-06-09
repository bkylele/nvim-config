-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use({ 
	'catppuccin/nvim',
	as = 'catppuccin'
})

use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

use {
	'preservim/nerdtree',
	requires = { {'nvim-lua/plenary.nvim'} }
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




use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-surround')
use('tpope/vim-commentary')
-- use('tpope/vim-fugitive')  I'm just gonna do the !

use('jbyuki/venn.nvim')
use('seandewar/nvimesweeper')
use('ThePrimeagen/vim-be-good')
use('eandrju/cellular-automaton.nvim')
-- use('alec-gibson/nvim-tetris')
-- use('seandewar/killersheep.nvim')

use('lervag/vimtex')



  end)
