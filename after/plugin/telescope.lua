local builtin = require('telescope.builtin')
local actions = require("telescope.actions")

require("telescope").setup {
    defaults = {
        sorting_strategy = "ascending",
        mappings = {
            n = {
                ["<Tab>"] = actions.select_default,
                ["l"] = actions.select_default
            }
        },
    },
    pickers = {
        buffers = {
            sort_mru = true,
            initial_mode = "normal",
            --[[ ignore_current_buffer = true ]]
        },
    }

}

vim.keymap.set('n', '<leader><Tab>', builtin.buffers)
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
