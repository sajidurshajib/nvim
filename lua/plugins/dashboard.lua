local dashboard = {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { {'nvim-tree/nvim-web-devicons'} },
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
            "╭━━━╮╱╱╱╱╱╱╭┳╮╱╭╮╱╭╮╭╮╭╮╱╱╱╱╱╱╱╱╱╱╱╭╮",
            "┃╭━╮┃╱╱╭╮╱╱┃┃┃╱┃┃╱┃┃┃┃┃┃╱╱╱╱╱╱╱╱╱╱╱┃|",
            "┃╰━━┳━━╋╋┳━╯┃┃╱┃┣━┫┃┃┃┃┣┳━━━┳━━┳━┳━╯┃",
            "╰━━╮┃╭╮┣╋┫╭╮┃┃╱┃┃╭┫╰╯╰╯┣╋━━┃┃╭╮┃╭┫╭╮┃",
            "┃╰━╯┃╭╮┃┃┃╰╯┃╰━╯┃┃╰╮╭╮╭┫┃┃━━┫╭╮┃┃┃╰╯┃",
            "╰━━━┻╯╰┫┣┻━━┻━━━┻╯╱╰╯╰╯╰┻━━━┻╯╰┻╯╰━━╯",
            "╱╱╱╱╱╱╭╯┃                            ",
            "╱╱╱╱╱╱╰━╯                            ",
        },
        -- shortcut entries must have proper types
        shortcut = {
          { desc = "New File", group = "Keyword", key = "SPC n f", action = "enew" },
          { desc = "Find File", group = "Keyword", key = "SPC f f", action = "Telescope find_files" },
          { desc = "Recent Files", group = "Keyword", key = "SPC f r", action = "Telescope oldfiles" },
        },
        packages = { enable = true },  -- show how many plugins loaded
        project = { enable = true, limit = 8, icon = "", label = "Projects", action = "Telescope find_files cwd=" },
        mru = { enable = true, limit = 10, icon = "", label = "MRU", cwd_only = false },
        footer = { "Happy coding! 🚀" },
      }
    }
  end,
}

return { dashboard }
