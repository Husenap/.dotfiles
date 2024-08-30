return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            "venv",
            "build",
          },
        },
      }
    end,
  },

  {
    "tzachar/local-highlight.nvim",
    config = function()
      require("local-highlight").setup {
        disable_file_types = {},
        insert_mode = false,
        min_match_len = 1,
        max_match_len = math.huge,
        highlight_single_match = true,
      }
    end,
  },
}
