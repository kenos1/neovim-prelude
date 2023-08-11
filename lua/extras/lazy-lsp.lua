-- Lazy-lsp: Run LSPs through ``nix-shell``
-- WARN: This requires the Nix package manager. See https://nixos.org/
return {
  {
    'dundalek/lazy-lsp.nvim',
    event = { "BufReadPost", "BufNewFile" },
    dependencies = 'neovim/nvim-lspconfig',
    config = function()
      require("neodev").setup {}

      require("lazy-lsp").setup {}

      -- TODO: Format on save (optional)
      -- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
    end
  }
}
