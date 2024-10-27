
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
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>Close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>sk", "<C-w>u", { desc = "Close other windows" })
keymap.set("n", "<leader>sp", "<C-w>w", { desc = "Navigate to previous window" })
keymap.set("n", "<leader>sn", "<C-w>W", { desc = "Navigate to next window" })
-- Tab Management
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Navigate to previous tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Navigate to next tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
