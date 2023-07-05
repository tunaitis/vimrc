local Plugin = {'folke/tokyonight.nvim'}

-- load this plugin during startup and before all other plugins
Plugin.lazy = false
Plugin.priority = 1000

Plugin.config = function()
  -- set the colorschem
  vim.cmd([[colorscheme tokyonight]])
end

return Plugin
