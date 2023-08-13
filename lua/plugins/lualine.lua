return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
      }
    },
  }
}
