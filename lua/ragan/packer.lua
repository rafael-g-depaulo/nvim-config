
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope (fuzzy finder)
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                            , branch = '0.1.x',


	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- file navigation. made by the youtube vim guy
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    -- git stuff
    use('tpope/vim-fugitive')

    -- themes
    use 'tomasiser/vim-code-dark'
end)

