return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup {}
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "gopls" },
    }

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup {}
    lspconfig.gopls.setup {}
  end,
}
