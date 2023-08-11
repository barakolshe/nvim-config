vim.g.mapleader = " "

-- Select all
vim.keymap.set({ "n", "v" }, "<C-a>", "gg0VG$")

-- Toggle line numbers
local function toggle_relativenumbers()
    local rnu = vim.wo.relativenumber

    if rnu then
        vim.wo.relativenumber = false
        vim.wo.number = true
    else
        vim.wo.relativenumber = true
        vim.wo.number = false
    end
end

vim.keymap.set("n", "<leader>1", toggle_relativenumbers)

vim.keymap.set("n", "<leader>c", ":", { noremap = true })
vim.keymap.set("n", "<C-q>", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>s", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<leader>hh", ":help ", { noremap = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "<leader>`", ":q!<CR>", { noremap = true })
vim.keymap.set("v", "J", "<Nop>", { noremap = true })

-- Panes navigations
--[[ vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) ]]

-- Changing current line
vim.api.nvim_set_keymap('n', 'J', ':move .+1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':move .-2<CR>', { noremap = true, silent = true })
-- In visual mode
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })
