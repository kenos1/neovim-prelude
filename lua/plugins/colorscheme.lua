-- Check out https://github.com/rockerBOO/awesome-neovim/#colorscheme for colorschemes!
return {
  -- This configuration will default to Tokyonight. Switch to your preferred colorscheme if you want to!
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    dependencies = 'typicode/bg.nvim', -- Sync colorscheme bg with terminal
    opts = {},
    config = function()
      vim.cmd [[colorscheme tokyonight]]
    end
  },
}
