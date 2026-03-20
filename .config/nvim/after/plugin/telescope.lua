local themes = require "telescope.themes"
local builtin = require('telescope.builtin')
local opts = {
    border = false,
    layout_config = {height = 0.30}
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', 'grg', builtin.live_grep, {})
vim.keymap.set('n', 'gO', function () builtin.lsp_document_symbols(themes.get_cursor(opts)) end, {})
vim.keymap.set('n', 'gwo', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'gwi', function () builtin.diagnostics(themes.get_ivy(opts)) end, {})
vim.keymap.set('n', 'fb', function () builtin.buffers(themes.get_ivy(opts)) end, {})


-- local actions = require "telescope.actions"
-- local action_state = require "telescope.actions.state"
-- local finders = require "telescope.finders"
-- local conf = require("telescope.config").values
--
--
