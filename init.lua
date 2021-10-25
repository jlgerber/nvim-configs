-- Init.lua 
--
-- Initialize neovim using lua
--
-- global configuraiton
-- vim.o.nvim_tree_ignore = {'.git', '.idea' }
vim.g.nvim_tree_quit_on_open = 1 
vim.g.nvim_tree_highlight_opened_files = 1 

require('plugins')
require('keymap')
