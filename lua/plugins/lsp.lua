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
      ensure_installed = { "lua_ls", "gopls", "html", "cssls", "tsserver" },
    }

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim"}
          },
        },
      },
    }
    lspconfig.gopls.setup {}

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.html.setup {
      capabilities = capabilities,
    }

    lspconfig.cssls.setup {
      capabilities = capabilities,
    }

    lspconfig.tsserver.setup {
      capabilities = capabilities,
    }
  end,
}
