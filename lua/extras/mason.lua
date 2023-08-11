-- Mason: A LSP Installer
return {
  {
    'williamboman/mason.nvim',
    event = { "BufReadPost", "BufNewFile" },
    dependencies = 'williamboman/mason-lspconfig.nvim',
    opts = {}
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = 'neovim/nvim-lspconfig',
    opts = {
      automatic_installation = true,
    }
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require("neodev").setup {}

      require 'lspconfig'.lua_ls.setup {}

      -- TODO: Format on save (optional)
      -- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
    end
  }
}
