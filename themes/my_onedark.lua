local function copy_theme(theme)
  local copy = {}
  for k, v in pairs(theme) do
    copy[k] = v
  end

  return copy
end

local onedark = require "base46.themes.onedark"

local M = {}

M.base_30 = copy_theme(onedark.base_30)

M.base_16 = copy_theme(onedark.base_16)
M.base_16.base08 = "#edae7e"

M.type = "dark"

return M
