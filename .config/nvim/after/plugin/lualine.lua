local mode_map = {
    ['NORMAL'] = 'N',
    ['O-PENDING'] = 'N?',
    ['INSERT'] = 'I',
    ['VISUAL'] = 'V',
    ['V-BLOCK'] = 'VB',
    ['V-LINE'] = 'VL',
    ['V-REPLACE'] = 'VR',
    ['REPLACE'] = 'R',
    ['COMMAND'] = '!',
    ['SHELL'] = 'SH',
    ['TERMINAL'] = 'T',
    ['EX'] = 'X',
    ['S-BLOCK'] = 'SB',
    ['S-LINE'] = 'SL',
    ['SELECT'] = 'S',
    ['CONFIRM'] = 'Y?',
    ['MORE'] = 'M',
}

local function clock()
   return os.date("%I:%M%P")
end

require('lualine').setup({
    sections = {
        lualine_a = { {'mode', fmt = function(s) return mode_map[s] or s end} },
        lualine_b = { 'branch' },
        lualine_c = { 'diagnostics', 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = { clock },
        lualine_z = { 'location' },
    },
    options = {
        component_separators = '',
        section_separators = { left = '', right = '' },
    },
})

    -- sections = {
    --     lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    --     lualine_b = { 'filename', 'branch', 'diagnostics' },
    --         '%=', --[[ add your center components here in place of this comment ]]
    --     },
    --     lualine_x = {},
    --     lualine_y = { 'filetype', 'progress' },
    --     lualine_z = {
    --         { 'location', separator = { right = '' }, left_padding = 2 },
    --     },
    -- },
    -- inactive_sections = {
    --     lualine_a = { 'filename' },
    --     lualine_b = {},
    --     lualine_c = {},
    --     lualine_x = {},
    --     lualine_y = {},
    --     lualine_z = { 'location' },
    -- },
    -- tabline = {},
    -- extensions = {},
