require("toggleterm").setup {
    open_mapping = [[<c-t>]],
    hide_numbers = true,      -- hide the number column in toggleterm buffers
    direction = 'horizontal',
    auto_scroll = true,       -- automatically scroll to the bottom on terminal outpu
    insert_mappings = true,   -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    --winbar = {
    --  enabled = false,
    --  name_formatter = function(term) --  term: Terminal
    --    return term.name
    --  end
    --},
}

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<C-q>', [[<C-\><C-n>]], { buffer = 0, noremap = true, nowait = true })
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
