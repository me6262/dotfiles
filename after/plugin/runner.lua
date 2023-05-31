local lsp = require('lspconfig')

local run_code = function ()
    
    local root = lsp.util.root_pattern('.git', 'run.json')
    local json_file = io.open((root() or '') .. 'run.json', "r")
    if json_file ~= nil then
        json_string = json_file.read(json_file, "*a")
    end
    local json = vim.fn.json_decode(json_string)
    local cmd = json['cmd']
    vim.cmd('TermExec cmd="' .. cmd .. '" dir=' .. (root() or ''))
end

vim.keymap.set('n', '<leader>r', run_code)
