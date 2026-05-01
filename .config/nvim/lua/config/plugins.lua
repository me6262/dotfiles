--@param string
local git = function (x) return 'https://github.com/' .. x end

vim.pack.add({

    git('neovim/nvim-lspconfig'),
    git('mason-org/mason.nvim'),
    git('nvim-treesitter/nvim-treesitter'),
    git('nvim-tree/nvim-web-devicons'),
    git('nvim-lualine/lualine.nvim'),
    git('kylechui/nvim-surround'),
    git('numToStr/Comment.nvim'),
    git('m4xshen/autoclose.nvim'),
    git('nvim-telescope/telescope.nvim'),
    git('Mofiqul/vscode.nvim'),
    -- {source = git('catppuccin/nvim'), name = "catppuccin"},


    git('nvim-lua/plenary.nvim'),
    git('prichrd/netrw.nvim'),
    git('ThePrimeagen/harpoon'),

})


local c = require('vscode.colors').get_colors()
require('vscode').setup({
    group_overrides = {
        TelescopeNormal = {bg = c.vscLeftDark},
        TelescopePromptNormal = {bg = c.vscLeftMid},
        TelescopePromptBorder = {bg = c.vscLeftMid},
        TelescopePromptTitle = { bg = c.vscLeftMid},
        TelescopeResultsBorder = {bg = c.vscLeftDark},
        TelescopeResultsTitle = { bg = c.vscLeftDark},
        TelescopePreviewBorder = {bg = c.vscTabOther},
        TelescopePreviewTitle = { bg = c.vscTabOther},
        TelescopePreviewNormal = {bg = c.vscTabOther},
    }
})



