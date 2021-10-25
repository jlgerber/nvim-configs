-- keymap

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
