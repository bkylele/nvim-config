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


use('mbbill/undotree')
use('tpope/vim-surround')
use('tpope/vim-commentary')
use('tpope/vim-fugitive')

use('jbyuki/venn.nvim')
use('seandewar/nvimesweeper')
use('seandewar/killersheep.nvim')
use('ThePrimeagen/vim-be-good')
use('eandrju/cellular-automaton.nvim')
use('alec-gibson/nvim-tetris')

use('lervag/vimtex')



  end)
