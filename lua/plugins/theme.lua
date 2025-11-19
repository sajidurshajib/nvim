-- Theme config
require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        bufferline = true,
        nvimtree = true,
        telescope = true,
        lualine = true,
    },
})
vim.cmd("colorscheme catppuccin")

