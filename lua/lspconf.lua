require'lspconfig'.pyright.setup{}
vim.lsp.set_log_level("debug")

--require("mason").setup()
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
