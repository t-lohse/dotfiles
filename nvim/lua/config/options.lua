-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local obj = vim.o
obj.tabstop = 4      -- A TAB character looks like 4 spaces
obj.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
obj.softtabstop = 4  -- Number of spaces inserted instead of a TAB character
obj.shiftwidth = 4   -- Number of spaces inserted when indenting
vim.opt.clipboard = 'unnamedplus'
--local opt = vim.opt
--opt.foldmethod = "expr"
--opt.foldexpr = "nvim_treesitter#foldexpr()"
