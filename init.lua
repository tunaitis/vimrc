vim.g.mapleader = ' '
vim.g.timeoutlen = 0

vim.o.termguicolors = true
vim.o.syntax = 'on'
Gvim.o.errorbells = false
vim.o.smartcase = true
vim.o.showmode = false
vim.bo.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.o.undofile = true
vim.o.incsearch = tru
vim.o.hidden = true
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.bo.autoindent = true
vim.bo.smartindent = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.wo.signcolumn = 'yes'
vim.wo.wrap = false


vim.o.mouse = false
vim.o.number = false
vim.o.relativenumber = true
vim.o.cc = 80

local map = require("utils").map

require('plugins')
require('keymaps')

require('lualine').setup()

local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
        },
    },
})

require'lspconfig'.html.setup{
}

require("mason").setup()
require("mason-lspconfig").setup {
     ensure_installed = { "html" },
}

vim.cmd [[colorscheme horizon]]

