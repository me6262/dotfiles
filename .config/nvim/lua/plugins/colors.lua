return {
    {
        "kelly-lin/ranger.nvim",
        config = function()
            require("ranger-nvim").setup(
                { 
                    replace_netrw = true,
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
        }
    }
