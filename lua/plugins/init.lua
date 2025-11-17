require("lazy").setup({
  -- Theme
  { "catppuccin/nvim", name = "catppuccin" },

  -- Optional icons
  { "kyazdani42/nvim-web-devicons" },

  -- File explorer (left sidebar like VS Code)
  { "nvim-tree/nvim-tree.lua" },

  -- Window tab name
  { "akinsho/bufferline.nvim", dependencies = "kyazdani42/nvim-web-devicons" },

  -- Telescope fuzzy finder
  -- Telescope needs ripgrep installed and Neovim version above 0.10.1
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- GitSigns
  { "lewis6991/gitsigns.nvim" },
})


-- Theme config
vim.g.catppuccin_flavour = "mocha"
vim.cmd([[colorscheme catppuccin]])
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NvimTreeNormal guibg=NONE ctermbg=NONE
  hi NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE
  hi NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE
  hi TelescopeNormal guibg=NONE
  hi TelescopeBorder guibg=NONE
  hi TelescopePromptNormal guibg=NONE
]])



-- Nvim-tree config
require("nvim-tree").setup({
  view = { side = "left", width = 30 },
  renderer = { 
    icons = { show = { git = true, folder = true, file = true } } 
  },
  update_focused_file = {
    enable = true,        -- follow the currently opened file
    update_cwd = true,    -- update tree root to current file directory
    ignore_list = {},     -- you can ignore certain files/directories
  },
})



-- Bufferline config
require("bufferline").setup({
  options = {
    show_buffer_icons = true,        -- show filetype icons
    show_buffer_close_icons = true,  -- show close buttons
    always_show_bufferline = true,   -- always display tabs (empty buffer)
    separator_style = "thin",       -- tab separators
    diagnostics = "nvim_lsp",        -- optional LSP diagnostics in tabs
    style = 'default',

     -- This aligns bufferline with NvimTree
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",  -- optional, title for the sidebar
        highlight = "Directory",
        text_align = "left", -- can be "center" or "right"
      }
    },
  },
})


local hl_groups = {
  "BufferLineBackground",
  "BufferLineFill",
  "BufferLineTab",
  "BufferLineTabActive",
  "BufferLineTabClose",
  "BufferLineSeparator",
  "BufferLineSeparatorVisible",
  "BufferLineSeparatorSelected",
  "BufferLineIndicatorSelected",
}

for _, group in ipairs(hl_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end



-- Telescope config and keymaps
local builtin = require("telescope.builtin")

-- Search files in current project
vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true })
-- Live grep search in all files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true })
-- Search buffers
vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true })
-- Search help tags
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, silent = true })


-- GitSigns config
require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "│" },
    topdelete    = { text = "│" },
    changedelete = { text = "│" },
  },
})

vim.keymap.set("n", "]c", function()
  require("gitsigns").next_hunk()
end)
vim.keymap.set("n", "[c", function()
  require("gitsigns").prev_hunk()
end)

vim.keymap.set("n", "<leader>gp", function()
  require("gitsigns").preview_hunk()
end)

