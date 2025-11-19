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


