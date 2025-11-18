vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic keymaps 
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>x", ":x<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>s", ":w | bw<CR>", {noremap = true, silent = true})


-- Line move
-- Normal mode: move current line
vim.api.nvim_set_keymap("n", "<leader>j", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", ":m .-2<CR>==", { noremap = true, silent = true })

-- Visual mode: move selected block
vim.api.nvim_set_keymap("v", "<leader>j", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>k", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })



-- Use leader key for a shortcut
vim.api.nvim_set_keymap("n", "<leader>b", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
-- Jump to NvimTree window
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
-- Jump to editor window
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })




