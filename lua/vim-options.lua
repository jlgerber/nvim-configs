
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set colorcolumn=100")
vim.cmd("set number")
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
local keymap = vim.keymap -- alias
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights"})
-- increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
-- Window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
-- Commenting out since we have vim-maximizer plugin
-- keymap.set("n", "<leader>w_", "<C-w>_", { desc = "Max out the current buffer's height" })
-- keymap.set("n", "<leader>w-", "<C-w>|", { desc = "Max out the current buffer's width" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>wk", ":only<CR>", { desc = "Close other windows" })
keymap.set("n", "<leader>wp", "<C-w>w", { desc = "Navigate to previous window" })
keymap.set("n", "<leader>wn", "<C-w>W", { desc = "Navigate to next window" })
keymap.set("n", "<leader>wr", "<C-w>r", { desc = "Rotate windows" })
-- Plugin vim-maximizer used to toggle current buffer to maximize size via <leader>wm
-- Tab Management
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Navigate to previous tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Navigate to next tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
-- Buffers
keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Switch to next buffer"})
keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Switch to previous buffer"})
