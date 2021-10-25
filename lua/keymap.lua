-- keymap

-- set up some local variables to make this a bit less of a pain
local kmap = vim.api.nvim_set_keymap
local nrmp = {noremap = true, silent = true}

-- set jk to alias the esc command so that I don't have to type esc 
kmap('i', 'jk', '<esc>', nrmp)

-- set up space to be a noop then set a mapleader of space
-- finally set space+h to toggle search highlight on and off. 
-- To use - /search for something, hit enter, and then if the highlights annoy
-- simply press space 'h'
kmap('n', '<Space>', '<NOP>', nrmp)
vim.g.mapleader = ' '
kmap('n', '<Leader>h', ':set hlsearch!<CR>', nrmp)

-- window navigation
kmap('n', '<C-h>', '<C-w>h', nrmp)
kmap('n', '<C-j>', '<C-w>j', nrmp)
kmap('n', '<C-k>', '<C-w>k', nrmp)
kmap('n', '<C-l>', '<C-w>l', nrmp)

-- open nvim-tree 
kmap('n', '<Leader>e', ':NvimTreeOpen<CR>', nrmp)
