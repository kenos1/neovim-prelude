-- Check out https://github.com/rockerBOO/awesome-neovim/#colorscheme for colorschemes!
return {
  -- This configuration will default to Tokyonight. Switch to your preferred colorscheme if you want to!
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd [[colorscheme tokyonight]]
    end
  },

  -- Sync colorscheme bg with terminal
  {
    'typicode/bg.nvim',
    lazy = false,
    priority = 999
  }
}
