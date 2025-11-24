-- plugins/treesitter.lua
local treesitter = {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Install parsers for the languages you want
      ensure_installed = { "python", "javascript", "html", "css", "lua" },

      -- Enable syntax highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- Enable indentation based on Treesitter
      indent = {
        enable = true,
      },

      -- Rainbow parentheses
      rainbow = {
        enable = true,
        extended_mode = true, -- also color non-bracket delimiters like html tags
        max_file_lines = nil, -- no limit
      },

      -- Optional: incremental selection (like VSCode expand selection)
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grm",
          scope_incremental = "grc",
        },
      },

      -- Optional: text objects for easier navigation
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    })
  end,
}

-- Rainbow parentheses plugin
local rainbow = {
  "p00f/nvim-ts-rainbow",
  after = "nvim-treesitter",
}

return { treesitter, rainbow }

