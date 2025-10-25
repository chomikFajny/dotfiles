return {
  -- Mason: installs and manages external tools like LSP servers
  {
    'mason-org/mason.nvim',
    opts = {},
  },

  -- Mason-LSPConfig: tells Mason which servers to install and links them to lspconfig
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'lua_ls', -- Lua (great for editing Neovim config)
        'pyright', -- Python
        'ts_ls', -- TypeScript / JavaScript
        'rust_analyzer', -- Rust
        'clangd', -- C / C++
      },
    },
  },

  -- nvim-lspconfig: connects Neovim to installed LSP servers
  {
    "neovim/nvim-lspconfig",
    config = function()
    -- Define or customize LSP configurations
    vim.lsp.config("lua_ls", {})
    vim.lsp.config("pyright", {})
    vim.lsp.config("ts_ls", {})
    vim.lsp.config("rust_analyzer", {})
    vim.lsp.config("clangd", {})

    -- Enable the servers (activates based on filetype)
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("pyright")
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("rust_analyzer")
    vim.lsp.enable("clangd")
    end
  },
}
