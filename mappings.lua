local M = {}

-- Disabled mappings
M.disabled = {
  n = {
    ["p"] = "", -- Disable Nvchad paste and yank into clipboard
    ["<leader>x"] = "", -- Default Nvchad mapping for closing current buffer
  },
  v = {
    ["p"] = "", -- Disable Nvchad paste and yank into clipboard
  },
}

-- Custom mappings
M.abc = {
  n = {
    ["<leader>y"] = { '"+y', "yank to clipboard" },
    ["<leader>tn"] = { "<cmd> tabNext <CR>", "Next Tab" },
  },
  v = {
    ["<leader>y"] = { '"+y', "yank to clipboard" },
  },
}

M.tabufline = {
  n = {
    ["<leader>xc"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close current buffer",
    },
    ["<leader>xo"] = {
      function()
        require("nvchad_ui.tabufline").closeOtherBufs()
      end,
      "Close all the others buffers",
    },
    ["<leader>xx"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,
      "Close all the tabs and its buffers",
    },
  },
}

return M
