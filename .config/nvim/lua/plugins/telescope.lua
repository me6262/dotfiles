return {

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
                border = true,
                layout_config = {
                    horizontal = {
                        prompt_position = 'top',
                    }
                },
                borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
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
}
}
