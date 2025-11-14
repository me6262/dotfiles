return {
    {
        "kelly-lin/ranger.nvim",
        config = function()
            require("ranger-nvim").setup(
                { 
                    replace_netrw = false,
                    ui = {
                        border = "rounded",
                        height = 0.85,
                        width = 0.85,
                        x = 0.5,
                        y = 0.5,
                    }
                })
                vim.api.nvim_set_keymap("n", "<leader>ef", "", {
                    noremap = true,
                    callback = function()
                        require("ranger-nvim").open(true)
                    end,
                })
            end,
        },
        {
            "startup-nvim/startup.nvim",
            dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
            config = function()
                require "startup".setup()
            end
        },
        { 'prichrd/netrw.nvim', opts = {} },
    }
