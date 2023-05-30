vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use "Pocco81/DAPInstall.nvim"
    use {
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim',
    }

    use {"zbirenbaum/copilot.lua"}

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    


    use { "catppuccin/nvim", as = "catppuccin" }

    use('ThePrimeagen/harpoon')
    use('ctrlpvim/ctrlp.vim')
    use {
        "kelly-lin/ranger.nvim",
        config = function()
            require("ranger-nvim").setup({ replace_netrw = true })
            vim.api.nvim_set_keymap("n", "<leader>ef", "", {
                noremap = true,
                callback = function()
                    require("ranger-nvim").open(true)
                end,
            })
        end,
    }
    use('mbbill/undotree')
    use "lukas-reineke/indent-blankline.nvim"
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
  --  use({
  --      "NTBBloodbath/zig-tools.nvim",
  --      -- Load zig-tools.nvim only in Zig buffers
  --      ft = "zig",
  --      config = function()
  --          -- Initialize with default config
  --          _G.zigtools_config = require("stuff.zig").zigtools_config
  --          require("zig-tools").setup(_G.zigtools_config)
  --          
  --      end,
  --      requires = {
  --          {
  --              "akinsho/toggleterm.nvim",
  --              config = function()
  --                  require("toggleterm").setup()
  --              end,
  --          },
  --          {
  --              "nvim-lua/plenary.nvim",
  --              module_pattern = "plenary.*"
  --          }
  --      },
  --  })
  
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

end)
