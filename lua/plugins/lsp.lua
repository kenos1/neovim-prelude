-- Language server configuration
return {
  {
    'neovim/nvim-lspconfig',
    keys = {
      { '<leader>ls', '<cmd>LspStart<cr>',                 desc = 'Start LSP server' },
      { '<leader>lS', '<cmd>LspStop<cr>',                  desc = 'Stop LSP server' },
      { '<leader>lR', '<cmd>LspRestart<cr>',               desc = 'Restart LSP server' },
      { '<leader>lf', '<cmd>lua vim.lsp.buf.format()<cr>', desc = 'Format file' },
    },
    dependencies = {
      'folke/neodev.nvim',
      'nvimdev/lspsaga.nvim'
    },
  },

  -- LSP UI
  {
    'nvimdev/lspsaga.nvim',
    keys = {
      { 'K',          '<cmd>Lspsaga hover_doc<cr>' },
      { 'ga',         '<cmd>Lspsaga code_action<cr>' },
      { 'gd',         '<cmd>Lspsaga peek_definition<cr>' },
      { '<leader>lr', '<cmd>Lspsaga rename<cr>' },
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
      require('lspsaga').setup {}
    end
  },
}
