local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', 'grg', builtin.live_grep, {})
vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gwo', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'gdi', builtin.diagnostics, {})




-- local pickers = require "telescope.pickers"
-- local actions = require "telescope.actions"
-- local action_state = require "telescope.actions.state"
-- local finders = require "telescope.finders"
-- local conf = require("telescope.config").values
--
--
