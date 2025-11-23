-- plugins/mason.lua


local mason = {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end,
}

local mason_lspconfig = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
  event = "VeryLazy", -- delay config until LSP is ready
  config = function()
    -- safe require to avoid nil error
    local ok, mlc = pcall(require, "mason-lspconfig")
    if not ok or not mlc.setup then
      vim.notify("mason-lspconfig not found or too old!", vim.log.levels.ERROR)
      return
    end

    -- ensure LSP servers are installed
    mlc.setup({
      ensure_installed = { "lua_ls" },
    })

    -- safe LSP setup
    pcall(function()
      -- vim.lsp.config.pyright.setup({})
      -- vim.lsp.config.tsserver.setup({})
      -- vim.lsp.config.html.setup({})
      -- vim.lsp.config.cssls.setup({})
      vim.lsp.config.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
          },
        },
      })
    end)
  end,
}


-- For DropDown
local nvim_cmp = {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local ok, cmp = pcall(require, "cmp")
    if not ok then return end

    local luasnip_ok, luasnip = pcall(require, "luasnip")  -- optional snippet support
    if not luasnip_ok then luasnip = nil end

    cmp.setup({
      snippet = {
        expand = function(args)
          if luasnip then
            luasnip.lsp_expand(args.body)
          end
        end,
      },
      mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- enter to confirm
        ["<C-Space>"] = cmp.mapping.complete(),           -- manual completion trigger
      },
      sources = {
        { name = "nvim_lsp" },
      },
    })
  end,
}



return { mason, mason_lspconfig, nvim_cmp }

