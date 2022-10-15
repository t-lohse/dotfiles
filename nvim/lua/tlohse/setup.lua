--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.clipboard:append{ 'unnamed', 'unnamedplus' }
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.opt.updatetime = 10 

vim.opt.smartindent = true

vim.opt.wrap = false
vim.g.mapleader = " "
