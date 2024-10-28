-- nvim-dap.lua
-- https://github.com/mfussenegger/nvim-dap/tree/master
-- Debug Adapter Protocol client implementation for Neovim.
--
-- Depends on
-- https://github.com/rcarriga/nvim-dap-ui
-- A ui for nvim-dap which provides a good out of the box configuration
return {
    {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		vim.keymap.set("n", "<F5>", dap.continue, { desc = "Continue" })
		vim.keymap.set("n", "<F6>", dap.step_over, { desc = "Step Over" })
		vim.keymap.set("n", "<F7>", dap.step_into, { desc = "Step Into" })
		vim.keymap.set("n", "<F8>", dap.step_out, { desc = "Step Out" })
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
	end,
    },
    {
        "rcarriga/nvim-dap-ui", 
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
    }
}
