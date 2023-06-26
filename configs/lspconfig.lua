local plugings_lsp = require 'plugins.configs.lspconfig'
local on_attach = plugings_lsp.on_attach
local capabilities = plugings_lsp.capabilities

local lspconfig = require'lspconfig';

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = lspconfig.util.root_pattern("tsconfig.json", "jsconfig.json", "tsconfig.json", "jsconfig.json"),
})

lspconfig.angularls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  root_dir = lspconfig.util.root_pattern("angular.json"),
})
