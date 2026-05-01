vim.cmd('colorscheme vscode')
local sethl = vim.api.nvim_set_hl
local gethl = vim.api.nvim_get_hl
sethl(0, "Pmenu", gethl(0, {name = "StatusLineNC"}))


vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.splitright = true
vim.opt.softtabstop = 4
vim.g.netrw_banner = 0
vim.opt.signcolumn = "yes"
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.cmd('set clipboard+=unnamedplus')
vim.diagnostic.config({
  virtual_text = false,  -- show inline messages
  signs = true,         -- show signs in the gutter
  underline = true,     -- underline problematic text
  update_in_insert = true, -- don't update diagnostics while typing
  severity_sort = true,     -- sort diagnostics by severity
})
