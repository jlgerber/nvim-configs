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
require("vim-options")

-----------------------------------------
-- package manager                     --
-- lazy                                --
-- https://github.com/folke/lazy.nvim  --
-----------------------------------------
require("config.lazy")
