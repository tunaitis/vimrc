-- set space as leader key
vim.g.mapleader = ' '

-- make the which-key to appear instantly
vim.o.timeoutlen = 0

local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    ["<tab>"] = { "<cmd>bp<cr>", "Previous Buffer" },
    ["<leader>"] = { "<cmd>Telescope find_files<cr>", "Open File" },
    b = { "<cmd>Telescope buffers<cr>", "Switch Buffer" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent" },
    n = { "<cmd>enew<cr>", "New File" },
    f = {
      name = "Find",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      c = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Find in Current Buffer" },
      b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
      r = { "<cmd>Telescope oldfiles<cr>", "Find Recent File" },
    },
  },
})
