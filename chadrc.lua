require "custom.init"

---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "my_onedark",
  transparency = true,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
