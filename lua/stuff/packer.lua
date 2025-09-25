vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'onsails/lspkind.nvim'
    use 'tomasiser/vim-code-dark'
    use 'numToStr/Comment.nvim'
    use 'mason-org/mason.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    use { "catppuccin/nvim", as = "catppuccin" }

    use('ThePrimeagen/harpoon')
    use('tpope/vim-fugitive')

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use('m4xshen/autoclose.nvim')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use 'Mofiqul/vscode.nvim'

    -- disable netrw at the very start of your init.lua (strongly advised)

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- empty setup using defaults
    use('nvim-tree/nvim-tree.lua')

    -- OR setup with some options
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
 
    use 'akinsho/toggleterm.nvim'

    use {'nvim-telescope/telescope-ui-select.nvim' }
    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'mfussenegger/nvim-jdtls'
    use 'soulis-1256/eagle.nvim'

end)
