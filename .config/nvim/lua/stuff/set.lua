-- require'vscode'.setup({
--
--     color_overrides = {
--         vscLeftDark = '#1F1F1F',
--
--         vscTabOutside = '#1F1F1F',
--     },
-- })
vim.cmd('colorscheme vscode')
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.g.netrw_banner = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.cmd('set clipboard+=unnamedplus')
external_term = "tmux split-window -vf"
