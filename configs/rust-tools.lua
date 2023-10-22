local rust_tools = require "rust-tools"
local plugings_lsp = require "plugins.configs.lspconfig"
local dap = require "custom.configs.dap";

rust_tools.setup {
  server = {
    on_attach = plugings_lsp.on_attach,
    capabilities = plugings_lsp.capabilities,
  },

  dap = {
    adapter = dap.adapter,
  },
}
