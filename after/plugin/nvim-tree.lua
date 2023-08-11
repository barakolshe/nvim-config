local api = require "nvim-tree.api"

local function custom_on_attach(bufnr)
    local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.del('n', '<CR>', { buffer = bufnr })
    vim.keymap.del('n', '<TAB>', { buffer = bufnr })

    vim.keymap.set('n', '<TAB>', api.node.open.edit, opts("Open"))
    vim.keymap.set('n', '<S-TAB>', api.node.open.preview, opts("Preview"))
    vim.keymap.set('n', 'l', api.node.open.edit, opts("Open"))
    vim.keymap.set('n', '<S-l>', api.node.open.preview, opts("Open"))
end

require("nvim-tree").setup {
    on_attach = custom_on_attach,
    update_focused_file = {
        enable = true,
    },
    renderer = {
        root_folder_label = false
    }
}

vim.keymap.set("n", "<leader>tt", api.tree.toggle)
