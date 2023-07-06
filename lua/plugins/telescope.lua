local Plugin = {'nvim-telescope/telescope.nvim'}

Plugin.branch = '0.1.x'

Plugin.dependencies = {
  {'nvim-lua/plenary.nvim'},
}

function Plugin.init()
  -- See :help telescope.builtin
end

function Plugin.config()
  require('telescope')--.load_extension('fzf')
end

return Plugin
