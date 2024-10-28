-- lualine.lua
-- https://github.com/nvim-lualine/lualine.nvim
-- A blazing fast and easy to configure Neovim statusline
return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                -- some themes to try
                -- theme = "palenight"
                -- theme = "onedark"
                -- theme = "nightfly"
                -- theme = "iceberg_dark"
                theme = "ayu_mirage"
                -- theme = "dracula"
            }
        })
    end
} 
