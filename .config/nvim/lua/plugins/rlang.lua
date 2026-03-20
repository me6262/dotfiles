
return {

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
}
