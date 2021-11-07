-- keymap

-- set up some local variables to make this a bit less of a pain
local kmap = vim.api.nvim_set_keymap
local nrmp = {noremap = true, silent = true}

-- I hate having to press escape. use jk  
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

kmap('t', '<C-h>', '<C-\\><C-n><C-w>h', nrmp)
kmap('t', '<C-j>', '<C-\\><C-n><C-w>j', nrmp)
kmap('t', '<C-k>', '<C-\\><C-n><C-w>k', nrmp)
kmap('t', '<C-l>', '<C-\\><C-n><C-w>l', nrmp)


-- Window Resizing
--
kmap('n', '<C-Up>', ':resize -2<CR>', nrmp)
kmap('n', '<C-Down>', ':resize +2<CR>', nrmp)
kmap('n', '<C-Left>', ':vertical resize -2<CR>', nrmp)
kmap('n', '<C-Right>', ':vertical resize +2<CR>', nrmp)

kmap('n', '<S-C-Up>', ':resize -10<CR>', nrmp)
kmap('n', '<S-C-Down>', ':resize +10<CR>', nrmp)
kmap('n', '<S-C-Left>', ':vertical resize -10<CR>', nrmp)
kmap('n', '<S-C-Right>', ':vertical resize +10<CR>', nrmp)


-- shift when in visual mode
kmap('v', '<', '<gv', nrmp)
kmap('v', '>', '>gv', nrmp)

-- open nvim-tree 
kmap('n', '<Leader>e', ':NvimTreeToggle<CR>', nrmp)

-- Tab switch buffer
kmap('n', '<TAB>', ':bnext<CR>', nrmp)
kmap('n', '<S-TAB>', 'bprevious<CR>', nrmp)

-- Move selected line / block of text in visual mode up or down
kmap('x', 'K', ':move \'<-2<CR>gv-gv\'', nrmp)
kmap('x', 'J', ':move \'>+1<CR>gv-gv\'', nrmp)

