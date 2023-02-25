require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "sumneko_lua", "rust_analyzer", "fortls", "marksman", "jedi_language_server"},
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require("lspconfig").sumneko_lua.setup {
--   capabilities = capabilities,
-- }
