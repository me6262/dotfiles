vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'onsails/lspkind.nvim'
    use 'numToStr/Comment.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- themes --
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Mofiqul/vscode.nvim'

    use('ThePrimeagen/harpoon')
    use('tpope/vim-fugitive')

    -- lsp --
    use 'mason-org/mason.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use('m4xshen/autoclose.nvim')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {'nvim-telescope/telescope-ui-select.nvim' }
    use 'mfussenegger/nvim-jdtls'

end)
