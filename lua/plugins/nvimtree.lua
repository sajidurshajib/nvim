-- NvimTree setup
require("nvim-tree").setup({
  hijack_cursor = true,
  respect_buf_cwd = true,
  view = {
    side = "left",
    width = 30,
    preserve_window_proportions = true,
  },
  renderer = {
    root_folder_label = false,
    highlight_opened_files = "icon",
    indent_markers = {
      enable = true,
    },
  },
  update_focused_file = {
    enable = true,        -- follow the currently opened file
    update_cwd = true,    -- update tree root to current file directory
    ignore_list = {},     -- you can ignore certain files/directories
  },
})


