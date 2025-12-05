require("lazy").setup({
  -- Theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000},

  -- Optional icons
  { "kyazdani42/nvim-web-devicons" },

  -- File explorer (left sidebar like VS Code)
  { "nvim-tree/nvim-tree.lua" },

  -- Window tab name
  { "akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

  -- Telescope fuzzy finder
  -- Telescope needs ripgrep installed and Neovim version above 0.10.1
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  
  -- Banner/Dashboard 
  unpack(require("plugins.dashboard")),

  -- GitSigns
  { "lewis6991/gitsigns.nvim" },

  -- TreeSitter
  unpack(require("plugins.treesitter")),
},
  {
    git = { timeout = 600, }
  }
)


require("plugins.theme")
require("plugins.nvimtree")
require("plugins.bufferline")
require("plugins.telescope")
require("plugins.gitsigns")
require("plugins.transparent")

