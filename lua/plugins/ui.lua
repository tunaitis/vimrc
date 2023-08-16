return {
  -- colorschemes
  "folke/tokyonight.nvim",
  "akinsho/horizon.nvim",
  {
    "rose-pine/neovim",
    lazy = false,
    config = function ()
      require("rose-pine").setup {
        variant = 'moon',
        disable_italics = true,
      }
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    config = true,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("lualine").setup {
        extensions = { "nvim-tree" },
      }
    end,
  },

  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      auto_close = true,
      auto_preview = false,
    },
  },
}
