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

-- setting up lsp 
-- Following CHris@Machine's turoial video
-- https://www.chrisatmachine.com/Neovim/27-native-lsp/
-- (shows you how to install python lsp language server for instance )
--
-- Here is a list of all of the language servers and where to get them:
-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
--
-- using NvimTreeToggle command to show/hide tree instead of auto closing
-- vim.g.nvim_tree_quit_on_open = 1 
vim.g.nvim_tree_highlight_opened_files = 1 

require('plugins')
require('keymap')
require('nv-compe')
require('settings')
