-- disble netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- display line numbers in the gutter
vim.opt.number = true

-- make mouse interations work on all modes (visual, normal, insert, command line)
vim.opt.mouse = 'a'

-- ignore uppercase letters when performing a search
vim.opt.ignorecase = true

-- make the search to ignore uppercase letters unless the search term has an uppercase letter
vim.opt.smartcase = true

-- disable results of the previous search
vim.opt.hlsearch = false

-- make the long lines always visible
vim.opt.wrap = true
vim.opt.breakindent = true

-- set single tab to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- convert tab characters to spaces
vim.opt.expandtab = true

-- add the sign column
vim.opt.signcolumn = 'yes'

-- enable 24-bit RGB colors
vim.opt.termguicolors = true

