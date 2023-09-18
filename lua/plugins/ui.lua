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
    opts = {
      open_mapping = [[<D-\>]],
      direction = 'float',
    },
  },

  {
    "ahmedkhalf/project.nvim",
    opts = {

    },
    config = function()
      require("project_nvim").setup {
      }

      require('telescope').load_extension('projects')
    end,
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
}
