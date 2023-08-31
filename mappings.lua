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
  x = {
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

--
-- Codeium

M.codeium = {
  i = {
    ["<C-g>"] = {
      function()
        return vim.fn["codeium#Accept"]()
      end,
      "Accept the current completion",
      opts = { expr = true },
    },
    ["<C-x>"] = {
      function()
        return vim.fn["codeium#Clear"]()
      end,
      "Clear the current completion",
      opts = { expr = true },
    },
		["<C-a>"] = {
			function()
				return vim.fn["codeium#Complete"]()
			end,
			"Undo the current completion",
			opts = { expr = true },
		}
  },
}

M.trouble = {
	n = {
		["<leader>tt"] = {
			"<cmd> TroubleToggle <CR>",
			"Toggle Trouble bar",
		},
	},
}

return M
