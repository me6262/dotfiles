vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)
vim.cmd("cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")



vim.keymap.set("n", "<leader>gb", ':ls<CR>:b<space>')
-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


require('dapui').setup()
-- dap
vim.keymap.set("n", '<leader>vdo', require("dapui").toggle)

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>s", "<cmd>Telescope<CR>")
vim.keymap.set("n", "H", "<Home>")
vim.keymap.set("n", "L", "<End>")
vim.cmd [[
    map <leader>n <Cmd>bp<CR>  
    map <leader>b <Cmd>bn<CR>
]]

local opts = {buffer = bufnr, remap = false}

local hoveropts = {
    border = "single"
}

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
-- vim.keymap.set("n", "gf", function() vim.lsp.formatexpr() end, opts)
vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover { border = "rounded", max_height = 25, max_width = 120 }
end, { desc = "Hover documentation" })


vim.keymap.set('i', '<c-space>', function()

    vim.lsp.completion.get()
end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
vim.keymap.set("n", "<leader>k", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
