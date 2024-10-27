-- https://github.com/akinsho/bufferline.nvim
-- a snazzy buffer line with tabpage integration for neovim
--
return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
        mode = "tabs",
        separator_style = "slant",
        }
    }
}

