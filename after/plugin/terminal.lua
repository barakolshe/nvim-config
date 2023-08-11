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
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { buffer = 0, noremap = true, nowait = true })
    vim.keymap.set('n', '<C-h>', [[<C-w>h<CR>]], opts)
    vim.keymap.set('n', '<C-j>', [[<C-w>j<CR>]], opts)
    vim.keymap.set('n', '<C-k>', [[<C-w>k<CR>]], opts)
    vim.keymap.set('n', '<C-l>', [[<C-w>l<CR>]], opts)
    vim.keymap.set('n', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
