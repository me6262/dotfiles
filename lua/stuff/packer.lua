vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    use { "catppuccin/nvim", as = "catppuccin" }
    vim.cmd('colorscheme catppuccin-frappe')

    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
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
    use('APZelos/blamer.nvim')
    use('m4xshen/autoclose.nvim')
    use({
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup() end
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {

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
        }
    }

    use {'romgrk/barbar.nvim', requires = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    }}

    use 'Mofiqul/vscode.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use({
        "NTBBloodbath/zig-tools.nvim",
        -- Load zig-tools.nvim only in Zig buffers
        ft = "zig",
        config = function()
            -- Initialize with default config
            require("zig-tools").setup()
            require("zig-tools.config").set(zigtools_config)
        end,
        requires = {
            {
                "akinsho/toggleterm.nvim",
                config = function()
                    require("toggleterm").setup()
                end,
            },
            {
                "nvim-lua/plenary.nvim",
                module_pattern = "plenary.*"
            }
        },
    })

end)
