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
      filetypes = { "html", "jinja.html" },
    }

    lspconfig.cssls.setup {
      capabilities = capabilities,
    }

    lspconfig.tsserver.setup {
      capabilities = capabilities,
    }

    -- turn on borders for the hover window
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = "rounded",
      }
    )

    vim.diagnostic.config {
      float={
        border = "rounded",
      },
    }

    require('lspconfig.ui.windows').default_options = {
      border = "rounded",
    }

  end,
}
