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


