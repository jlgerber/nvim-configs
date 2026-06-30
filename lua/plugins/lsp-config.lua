
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- 1. Setup global LSP hotkeys safely
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      end,
    })

    -- 2. Boot up Mason package manager
    require("mason").setup()
    require("mason-lspconfig").setup({
      -- Put whatever language servers you use here!
      ensure_installed = { "lua_ls", "pyright" }, 
      handlers = {
        function(server_name)
          -- 3. This leverages the new Neovim 0.11 native framework safely
          vim.lsp.config(server_name, {})
          vim.lsp.enable(server_name)
        end,
      },
    })
  end,
}
