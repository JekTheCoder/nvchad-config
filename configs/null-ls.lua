local null_ls = require("null-ls")

local fmt = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  fmt.prettier,
  fmt.stylua,

  lint.shellcheck
}

null_ls.setup {
  debug = true,
  sources = sources,
}
