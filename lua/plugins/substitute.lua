-- substitute.lua
-- https://github.com/gbprod/substitute.nvim
-- provide new operator motions to make it very easy to perofrm quick substitutions and exchange
--
-- Usage
-- yank something into the buffer ( this will be the source of the substitution )
-- move the cursor somewhere
-- hit one of the keys (like s) + a movement key or keys
-- enjoy
return {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local subst = require('substitute')
        subst.setup()
        vim.keymap.set('n', 's', subst.operator, {noremap = true, desc = "substitute operator"})
        vim.keymap.set('n', 'ss', subst.line, {noremap = true, desc = "substitute line"})
        vim.keymap.set('n', 'S', subst.eol, {noremap = true, desc = "substitute end of line"})
        vim.keymap.set('x', 's', subst.visual, {noremap = true, desc = "substitute visual"})
    end,
    opts = {}
}
