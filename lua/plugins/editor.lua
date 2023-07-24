return {
  -- custom syntax support
  {
    "Glench/Vim-Jinja2-Syntax",
  },

  -- treesitter and its plugins
  "windwp/nvim-ts-autotag",
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "lua", "go", "html", "css", "javascript", "typescript", "tsx" },
        highlight = {
          enable = true,
        },
        autotag = {
          enable = true,
        }
      }
    end
  },
}
