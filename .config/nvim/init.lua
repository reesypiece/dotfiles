require 'plugins'

function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function nimap(lhs, rhs, opts)
	map('n', lhs, rhs, opts)
	map('i', lhs, rhs, opts)
end

-- nvim
vim.o.hidden = true
vim.o.cursorline = true
vim.o.preserveindent = true
vim.opt.termguicolors = true
vim.o.wrap = false
vim.o.ruler = false
vim.o.showmode = false
vim.o.expandtab = false
vim.wo.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

-- nvimtree
map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>')
map('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>')
map('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>')

-- Barbar
map('n', '<A-z>', '<Cmd>BufferPrevious<CR>')
map('n', '<A-x>', '<Cmd>BufferNext<CR>')
map('n', '<A-c>', '<Cmd>BufferClose<CR>')
map('n', '<A-S-c>', '<Cmd>BufferClose!<CR>')

-- lualine
require('lualine').setup{
	options = { theme = 'auto' },
}

-- colorscheme
vim.cmd 'colorscheme embark'
require('colorizer').setup()

-- mouse support?
vim.cmd 'set mouse=a'
