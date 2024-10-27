-- https://github.com/nvimtools/none-ls.nvim
--
-- IMPORTANT!
-- I had to use :Mason to install stylua
-- navigate to the package and hit 'i' to install.
--
-- Other packages installed via Mason:
-- prettier
-- eslint_d
-- black
-- isort
-- cmakelint
return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                -- python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                -- javascript
                null_ls.builtins.formatting.prettier,
                -- null_ls.builtins.diagnostics.eslint_d,
                -- 
                null_ls.builtins.diagnostics.cmake_lint,
                --
                null_ls.builtins.completion.spell,
                null_ls.builtins.code_actions.gitsigns, -- code_action,
                null_ls.builtins.diagnostics.cppcheck,
                null_ls.builtins.formatting.qmlformat,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP Format Buffer" })
    end,
}
