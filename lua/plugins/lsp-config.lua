-- language server protocol configuration
-- https://github.com/neovim/nvim-lspconfig
--
-- this plugin uses mason
--
-- https://github.com/williamboman/mason.nvim
-- mason installs specific lsp implementations for us
-- Configuration for
--     https://github.com/hrsh7th/cmp-nvim-lsp
-- was added as well. (see completions.lua)
--
-- And meson-lspconfig
--
-- https://github.com/williamboman/mason-lspconfig.nvim
-- website has list of language servers supported
-- mediates between mason and nvim-lspconfig. also provides the 'ensure_installed'
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		--[[
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "mesonlsp", "remark_ls", "ts_ls"}
            })
        end
        ]]
	},
	-- https://github.com/neovim/nvim-lspconfig
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- from cmp-nvim-lsp
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- end cmp-nvim-lsp configuration
			local lspconfig = require("lspconfig")
			-- You have to add the capabilities bit for any language servers you set up
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.remark_ls.setup({
				capabilities = capabilities,
			})

			-- shift-k to get info for whatever symbol we are over
			vim.keymap.set("n", "<leader>ls", vim.lsp.buf.hover, { desc = "LSP Get Info for Symbol mouse is over" })
			vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, { desc = "LSP Goto declaration" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP Goto definition" })
			vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "LSP Goto implementation" })
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "LSP signature help" })
			vim.keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help, { desc = "LSP signature help" })
			vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "LSP Execute code action" })
		end,
	},
}
