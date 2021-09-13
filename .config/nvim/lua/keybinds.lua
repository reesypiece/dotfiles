local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}  --empty opt for maps with no extra options

vim.g.mapleader = " "	-- Space best leader key, I guess

-- nvimtree
map('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>')
map('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>')
map('n', '<leader>n', '<Cmd>NvimTreeFindFile<CR>')

-- Bufferline.nvim
map('n', '<A-z>', '<Cmd>BufferLineCyclePrev<CR>')
map('n', '<A-x>', '<Cmd>BufferLineCycleNext<CR>')
