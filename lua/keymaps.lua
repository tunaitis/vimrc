
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find in files" })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  ["<leader>"] = {
    ["<tab>"] = { "<cmd>bp<cr>", "Previous Buffer" },
    ["<leader>"] = { "<cmd>Telescope find_files<cr>", "Open File" },
    b = { "<cmd>Telescope buffers<cr>", "Switch Buffer" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent" },
    n = { "<cmd>enew<cr>", "New File" },
    f = {
      name = "+file",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
      n = { "<cmd>enew<cr>", "New File" },
    },
  },
})
