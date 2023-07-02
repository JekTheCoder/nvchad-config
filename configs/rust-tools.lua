local rust_tools = require "rust-tools"

local plugings_lsp = require "plugins.configs.lspconfig"
local on_attach = plugings_lsp.on_attach
local capabilities = plugings_lsp.capabilities

rust_tools.setup {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}
