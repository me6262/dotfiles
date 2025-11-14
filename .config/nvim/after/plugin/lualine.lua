local vsc = require'lualine.themes.vscode'
local cat_main_bgc = "#1E1E2E"
local vsc_main_bgc = "#1F1F1F"
local main_bgc = vsc_main_bgc
vsc.normal.c.bg = main_bgc
vsc.insert.c.bg = main_bgc
vsc.command.c.bg = main_bgc
vsc.terminal.c.bg = main_bgc
vsc.replace.c.bg = main_bgc
vsc.inactive.c.bg = main_bgc
require('lualine').setup({
    options = {
        theme = vsc,
        component_separators = '',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch', 'diagnostics' },
        lualine_c = {
            '%=', --[[ add your center components here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
})
