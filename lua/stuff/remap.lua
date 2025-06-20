vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.cmd("cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle workspace_diagnostics<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>")
vim.keymap.set("n", "<leader>tm", "<cmd>ToggleTerm<CR>")
vim.keymap.set("n", "<leader>s", "<cmd>Telescope<CR>")
vim.keymap.set("n", "<leader>fa", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>fd", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "H", "<Home>")
vim.keymap.set("n", "L", "<End>")
vim.cmd [[
    map <leader>n <Cmd>bp<CR>  
    map <leader>b <Cmd>bn<CR>
]]
