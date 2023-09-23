return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false,
    config = function()
      local telescope = require("telescope")
      telescope.setup {
        pickers = {
          find_files = {
            theme = "dropdown",
            previewer = false,
          },
          oldfiles = {
            theme = "dropdown",
            previewer = false,
          },
          buffers = {
            theme = "dropdown",
            previewer = false,
            initial_mode = "normal",
            ignore_current_buffer = true,
            sort_lastused = true,
          },
          diagnostics = {
            theme = "dropdown",
            previewer = false,
            initial_mode = "normal",
          },
        },
        extensions = {
          file_browser = {
            hijack_netrw = true,
            theme = "dropdown",
            previewer = false,
            initial_mode = "normal",
          },
        },
      }
      -- telescope.load_extension("file_browser")
      telescope.load_extension("project")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    enabled = false,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    enabled = true,
  },
}
