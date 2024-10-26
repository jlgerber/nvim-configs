return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        -- To see what languages treesitter supports, run :TSInstallInfo
        config.setup({
            ensure_installed = {"lua", "rust", "cpp", "json", "yaml","make", "python", "html", "c", "javascript"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
