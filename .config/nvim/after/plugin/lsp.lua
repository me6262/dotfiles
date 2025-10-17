
-- (Optional) Configure lua language server for neovim


vim.lsp.enable('lua_ls')
vim.lsp.config['clangd'] = {

    cmd = {"clangd", "--function-arg-placeholders=false"}
}
vim.lsp.enable('clangd')
vim.lsp.enable('clang-format')
vim.lsp.enable('basedpyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.config['zls'] = {
    cmd = {'/home/hayden/.zls/zls/zig-out/bin/zls'}
}
vim.lsp.enable('zls')
require("mason").setup()

local opts = {buffer = bufnr, remap = false}

local hoveropts = {
    border = "single"
}

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- vim.keymap.set("n", "gf", function() vim.lsp.formatexpr() end, opts)
vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover { border = "rounded", max_height = 25, max_width = 120 }
end, { desc = "Hover documentation" })

vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
vim.keymap.set("n", "<leader>k", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)


-- gray




