return {
    {'numToStr/Comment.nvim', event = "InsertEnter"},
    {'neovim/nvim-lspconfig', lazy = false},
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
