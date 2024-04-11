require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local lspconfig = require('lspconfig')

require("mason-lspconfig").setup_handlers({
   function (server_name)
     require("lspconfig")[server_name].setup{}
   end,
   ["clangd"] = function ()
     lspconfig.clangd.setup {
      cmd = {
        "clangd",
        "--header-insertion=never",
        "--query-driver=/usr/bin/clang",
        "--all-scopes-completion",
        "--completion-style=detailed",
      } 
    }
    end
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require("lspconfig").sumneko_lua.setup {
--   capabilities = capabilities,
-- }
