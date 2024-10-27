return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        -- To see what languages treesitter supports, run :TSInstallInfo
        config.setup({
            -- ensure_installed = {"lua", "rust", "cpp", "json", "yaml","make", "python", "html", "c", "javascript"},
            -- we will automatically install files that we need
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
