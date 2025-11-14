return {


    {'numToStr/Comment.nvim', event = "InsertEnter"},
    {
        "R-nvim/R.nvim",
        -- Only required if you also set defaults.lazy = true
        lazy = false,
        opts = {
            external_term = "tmux splitw -h -l 55",
            hook = {
                on_filetype = function()
                    -- Use <Enter> to send code to R:
                    vim.api.nvim_buf_set_keymap(0, "n", "<Enter>",
                    "<Plug>RDSendLine", { noremap = true })
                    vim.api.nvim_buf_set_keymap(0, "v", "<Enter>",
                    "<Plug>RSendSelection", { noremap = true })

                    -- Emulate some of Vim-R's default key bindings:
                    if vim.bo.filetype == "rnoweb" then
                        vim.api.nvim_buf_set_keymap(0, "i", "<",
                        "<Plug>RnwInsertChunk", { noremap = true })
                    elseif vim.bo.filetype == "rmd" or vim.bo.filetype == "quarto" then
                        vim.api.nvim_buf_set_keymap(0, "i", "`",
                        "<Plug>RmdInsertChunk", { noremap = true })
                    end
                end,
            }
        }
    },
    {'neovim/nvim-lspconfig', lazy = false},
    {
        'nvim-telescope/telescope.nvim', version = '0.1.x',
        -- or                            , branch = '0.1.x',
        keys = {
            "<leader>ff",
            "<leader>s",
        },
        opts = function ()
            local act = require'telescope.actions'
            return {


            defaults = {

                mappings = {
                    i = {
                        ["<C-k>"] = act.move_selection_previous,
                        ["<C-j>"] = act.move_selection_next
                    }
                }
            }
        }
    end,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
    }
},
{ "catppuccin/nvim", name = "catppuccin", lazy = true },
{'Mofiqul/vscode.nvim'},

    {
        'ThePrimeagen/harpoon',
        keys = {
            "<C-e>",
            "<C-h>",
            "<C-j>",
            "<C-k>",
            "<C-l>",
            "<leader>m"
        }
    },
    {'tpope/vim-fugitive', cmd = "Git"},
    {
        "kylechui/nvim-surround",
        version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {'mason-org/mason.nvim', cmd = "Mason"},

    {'m4xshen/autoclose.nvim', event = "InsertEnter" },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},

     {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
    {'mfussenegger/nvim-jdtls', lazy = true, ft = 'java'}
    
}
