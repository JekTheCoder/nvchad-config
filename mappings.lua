local M = {}

-- Disabled mappings
M.disabled = {}

-- Custom mappings
M.abc = {
	n = {
		["<leader>y"] = { "\"+y", "yank to clipboard" },
	},
	v = {
		["<leader>y"] = { "\"+y", "yank to clipboard" },
	}
}

return M
