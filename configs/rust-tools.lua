local rust_tools = require "rust-tools"
local plugings_lsp = require "plugins.configs.lspconfig"
local dap = require "custom.configs.dap"

rust_tools.setup {
  server = {
    capabilities = plugings_lsp.capabilities,
    on_attach = function(client, bufnr)
      plugings_lsp.on_attach(client, bufnr)

      vim.keymap.set("n", "<leader>k", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<leader>g", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },

  dap = {
    adapter = dap.adapter,
  },
}
