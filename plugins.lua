local plugings = {
  {
    "Exafunction/codeium.vim",
    config = function()
      vim.g.codemium_disable_bindings = 1
    end,
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jekthecoder/codeconjurer",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    dir = "~/projects/lua/codeconjurer",
    config = function()
      require("codeconjurer").setup()
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.configs.rust-tools"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          ".git",
          "node_modules",
          "target", --rust
        },
      },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
				"scss",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "svelte",

      },
    },
  },
}

return plugings
