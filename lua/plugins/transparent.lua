-- Transparent 
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE
  hi NonText guibg=NONE ctermbg=NONE
  hi NvimTreeNormal guibg=NONE ctermbg=NONE
  hi NvimTreeVertSplit guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE
  hi TelescopeNormal guibg=NONE ctermbg=NONE
  hi TelescopeBorder guibg=NONE ctermbg=NONE
  hi TelescopePromptNormal guibg=NONE
  hi StatusLine guibg=NONE ctermbg=NONE
  hi StatusLineNC guibg=NONE ctermbg=NONE
  hi BufferLineOffset guibg=NONE ctermbg=NONE
]])

-- Global statusline transparent (fixes the offset problem)
vim.opt.laststatus = 3


-- hi NormalFloat guibg=NONE ctermbg=NONE
