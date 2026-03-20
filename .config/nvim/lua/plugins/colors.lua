return {
        { "catppuccin/nvim", name = "catppuccin", lazy = true },
        {'Mofiqul/vscode.nvim',
        opts = function ()
            local c = require('vscode.colors').get_colors()
            return {
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
            }
        end
    },
    "morhetz/gruvbox",
    {
        "startup-nvim/startup.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
        config = function()
            require "startup".setup()
        end
    },
    { 'prichrd/netrw.nvim', opts = {} },
}
