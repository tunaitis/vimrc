if vim.g.neovide then
  require('neovide')
end

require('settings')
require('keymaps')
require('plugin-manager')

pcall(vim.cmd.colorscheme, 'rose-pine')
