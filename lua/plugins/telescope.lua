
-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        -- leader == " " as you can see from above
        -- To use grep you can simply type <space>fg and you will be able to grep through the project
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end    
}
