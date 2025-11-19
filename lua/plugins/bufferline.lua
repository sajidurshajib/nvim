-- Bufferline config
require("bufferline").setup({
  options = {
    show_buffer_icons = true,        -- show filetype icons
    show_buffer_close_icons = true,  -- show close buttons
    always_show_bufferline = true,   -- always display tabs (empty buffer)
    separator_style = "thin",       -- tab separators
    diagnostics = "nvim_lsp",        -- optional LSP diagnostics in tabs
    style = 'default',
    transparent = true,
     -- This aligns bufferline with NvimTree
    offsets = {
      {
        filetype = "NvimTree",
        text = "== Explorer ==",  -- optional, title for the sidebar
        highlight = "Directory",
        text_align = "left", -- can be "center" or "right"
      }
    }, 
  },
})


