local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})

local pickers = require "telescope.pickers"
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local finders = require "telescope.finders"
local conf = require("telescope.config").values


-- runs the gradlew command to get all possible tasks, uses annoying lua string finding
-- but honestly a bit better than regex
--
-- puts it into a telescope thingy and runs the entry like '!./gradlew SELECTED_HERE'
local gradle_tasks = function(opts)

    local result_vals = {}
    local handle = io.popen("./gradlew tasks --all")
    for line in handle:lines("*l") do
        local match_line = string.match(line, "^%l%a+")
        if match_line ~= nil then
            table.insert(result_vals, match_line)
        end
        print(line)
        print(result_vals)
    end
    handle:close()
    opts = opts or {}
    pickers.new(opts, {
        prompt_title = "gradle_tasks",
        finder = finders.new_table {
            results = result_vals
        },
        sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
        actions.select_default:replace(function()
            actions.close(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            -- print(vim.inspect(selection))
            vim.cmd('!./gradlew ' .. selection[1])
        end)
        return true
    end
    }):find()
end

vim.keymap.set('n', '<leader>gr', gradle_tasks)
