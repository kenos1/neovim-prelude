-- Which-key: show possible keybinds
return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")

      wk.setup()

      -- Keybinds go here
      wk.register({
        f = {name = 'Files'},
        l = {name = 'LSP'},
        d = {name = 'Debugging'},
        u = {
          name = 'UI',
          s = {'<cmd>noh<cr>', 'Clear search highlights'},
        },
        s = {name = 'Search'},
        L = {'<cmd>Lazy<cr>', 'Lazy'},
        ['|'] = {'<cmd>vsplit<cr>', 'Vertical split'},
        ['-'] = {'<cmd>split<cr>', 'Horizontal split'},
      }, {prefix = '<leader>'})
    end,
  }
}
