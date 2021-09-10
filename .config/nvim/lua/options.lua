local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o
local wo = vim.wo

cmd('syntax enable')
o.mouse = "a"

o.hidden = true
o.cursorline = true
o.preserveindent = true
opt.termguicolors = true
o.wrap = false
o.ruler = false
o.showmode = false
o.expandtab = true
wo.number = true

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
