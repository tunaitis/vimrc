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
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- for git status
      "nvim-tree/nvim-web-devicons", -- for file icons
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        sort_by = "case_sensitive",
        view = {
          width = 40,
          side = "right",
        },
      }
    end,
  }
}
