-- set space as leader key
vim.g.mapleader = ' '

local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    ["<tab>"] = { "<cmd>bp<cr>", "Previous Buffer" },
    ["<leader>"] = { "<cmd>Telescope find_files<cr>", "Open File" },
    b = { "<cmd>Telescope buffers<cr>", "Switch Buffer" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent" },
    e = { "<cmd>Telescope file_browser<cr>", "Explorer" },
    n = { "<cmd>enew<cr>", "New File" },
    t = { "<cmd>ToggleTerm<cr>", "Terminal" },
    d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    h = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    f = {
      name = "Find",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      c = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Find in Current Buffer" },
      b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
      r = { "<cmd>Telescope oldfiles<cr>", "Find Recent File" },
    },
  },
  ["<tab>"] = { "<cmd>Telescope buffers<cr>", "Pick Buffer" },
  g = {
    name = "Go to",
    d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to Definition" },
    e = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Go to Error" },
  },
})
