-- plugins/telescope.lua:
-- https://github.com/nvim-telescope/telescope.nvim
return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Files" })
            -- leader == " " as you can see from above
            -- To use grep you can simply type <space>fg and you will be able to grep through the project
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set(
                "n",
                "<leader>fc",
                builtin.current_buffer_fuzzy_find,
                { desc = "Fuzzy Find in Current Buffer" }
            )
            -- telescope git
            vim.keymap.set(
                "n",
                "<leader>gc",
                builtin.git_commits,
                {
                    desc =
                    "git list git commits - <cr>: checkout, <C-r>m: reset mixed, <C-r>s: reset soft, <C-r>h: reset hard",
                }
            )
            vim.keymap.set(
                "n",
                "<leader>gb",
                builtin.git_branches,
                { desc = "git list all branches = <cr>: checkout, <C-r>: rebase,..." }
            )
            vim.keymap.set(
                "n",
                "<leader>gs",
                builtin.git_status,
                { desc = "git status - list changes per file with diff preview" }
            )
        end,
    },
    -- telescope-ui-select plugin
    -- https://github.com/nvim-telescope/telescope-ui-select.nvim
    -- sets vim.ui.select to telescope
    -- That means that neovim core stuff can fill the telescope picker.
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
