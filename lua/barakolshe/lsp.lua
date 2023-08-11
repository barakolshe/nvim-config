require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "eslint", "tsserver" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").tsserver.setup {}
