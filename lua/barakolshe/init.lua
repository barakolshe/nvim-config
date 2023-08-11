require("barakolshe.packer")
require("barakolshe.lsp")
require("barakolshe.remap")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- relative numbers
vim.wo.relativenumber = true

-- for nvim-cmp (autocomplete)
vim.o.pumheight = 12

-- just some splitting config
vim.o.splitright = true
vim.o.splitbelow = true

-- tabs and spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- for when using wildcards
vim.opt.incsearch = true

-- cool for scrolling
vim.opt.scrolloff = 8

-- For the toggleterm esc
vim.opt.ttimeoutlen = 0
