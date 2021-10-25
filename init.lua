-- Init.lua 
--
-- Note: I am using packer to manage nvim packages. To use on linux or osx, issue the following command:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
-- you will also probably have to issue a :PackerInstall command from nvim 
-- and you will have to follow the directions in lua/plugins.lua to install patched fonts
--
-- Initialize neovim using lua
--
-- global configuraiton
-- vim.o.nvim_tree_ignore = {'.git', '.idea' }

-- using NvimTreeToggle command to show/hide tree instead of auto closing
-- vim.g.nvim_tree_quit_on_open = 1 
vim.g.nvim_tree_highlight_opened_files = 1 

require('plugins')
require('keymap')
