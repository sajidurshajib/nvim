# My NeoVim Config

This is my personal NeoVim setup built with Lua and managed using **lazy.nvim**.

 
## Features
- Transparent theme + Catppuccin (Mocha)
- NvimTree file explorer
- Telescope fuzzy finder
- Bufferline with transparent UI
- Custom keymaps for window and tree navigation
- LSP support (separate config in `lua/lsp/`)

## Structure
- `init.lua` — main entry point  
- `lua/core/` — options & keymaps  
- `lua/plugins/` — plugin list for lazy.nvim  
- `lazy-lock.json` — locked plugin versions (committed)

## Notes
- Requires NeoVim ≥ 0.10  
- Requires `ripgrep` for Telescope
