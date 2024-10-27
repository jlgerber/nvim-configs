-- restore sesssion easily
-- https://github.com/rmagatti/auto-session
-- You can save a session using <space>ws
-- you can restore with <space>ws
return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")
        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = {"~/", "~/Downloads", "~/Documents", "~/Desktop"},
        })

        local keymap = vim.keymap
        keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", {desc = "restore session for cwd"})
        keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {desc = "Save session for auto session root dir"})
    end


}
