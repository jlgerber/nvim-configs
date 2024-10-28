-- surround.lua 
-- https://github.com/kylechui/nvim-surround
-- surrounds selections stylishly
--
-- Three core operations - add / delete / change
-- 
-- add    - ys{motion}{char}
-- delete - ds{char}
-- change - cs{target}{replacement}
--
-- Examples (* denotes cursor position)
--
-- Old Text                 | Command    | Result
-- ----------------------------------------------
-- surr*ound_words          | ysiw)      | (surround_words)
-- *make_strings            | ys$        | "make strings"
-- [delete ar*ound me!]     | ds]        | delete around me!
-- remove <b>HTML t*ags</b> | dst        | remove HTML tags
-- 'change quot*es'         | cs'"       | "change quotes"
-- <b>or tag* types</b>     | csth1<CR>  | <h1>or tag types</h1>
-- delete(functi*on calls)  | dsf        | function calls
--
return {
"kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = true,
    --[[ config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end ]]
}
