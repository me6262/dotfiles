return {


    {'numToStr/Comment.nvim', event = "InsertEnter"},
    {'neovim/nvim-lspconfig', lazy = false},
    {
        'nvim-telescope/telescope.nvim', version = '0.1.x',
        -- or                            , branch = '0.1.x',
        keys = {
            "<leader>ff",
            "<leader>s",
        },
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
        }
    },
    { "catppuccin/nvim", name = "catppuccin", lazy = true },
    'Mofiqul/vscode.nvim',

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

    {'mason-org/mason.nvim', cmd = "Mason"},

    {'m4xshen/autoclose.nvim', event = "InsertEnter" },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},

     {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },
    {'mfussenegger/nvim-jdtls', lazy = true, ft = 'java'}
    
}
