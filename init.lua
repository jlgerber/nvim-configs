-- This is the main configuration file for nvim
-- It is written in lua
--
-- you can source this config by typing
-- :source %
-- basic setup
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
-- the following is done in lazy.lua
-- vim.g.mapleader = " "

-- now it is time to chose a package manager
-- going with lazy
-- https://github.com/folke/lazy.nvim
--
require("config.lazy")
-- configure plugins
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- configure telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- leader == " " as you can see from above
-- To use grep you can simply type <space>fg and you will be able to grep through the project
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- treesitter
local config = require("nvim-treesitter.configs")
-- To see what languages treesitter supports, run :TSInstallInfo
config.setup({
    ensure_installed = {"lua", "rust", "cpp", "json", "yaml","make", "python", "html", "c", "javascript"},
    highlight = { enable = true },
    indent = { enable = true },
})
