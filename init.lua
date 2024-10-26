------------------------------
--         init.lua         --
------------------------------
--
-- This is the main configuration file for nvim, written in lua
--
-- you can source this config after making changes by typing
-- :source %

-----------------
-- basic setup --
-----------------
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- the following is done in lazy.lua
-- vim.g.mapleader = " "

-----------------------------------------
-- package manager                     --
-- lazy                                --
-- https://github.com/folke/lazy.nvim  --
-----------------------------------------
require("config.lazy")
