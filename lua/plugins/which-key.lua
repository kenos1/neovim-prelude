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
        f = { name = 'Files' },
        l = { name = 'LSP' },
        d = { name = 'Debugging' },
        u = {
          name = 'UI',
          s = { '<cmd>noh<cr>', 'Clear search highlights' },
        },
        s = { name = 'Search' },
        r = { name = 'Tasks and Jobs' },
        g = { name = 'Git' },
        L = { '<cmd>Lazy<cr>', 'Lazy' },
        ['|'] = { '<cmd>vsplit<cr>', 'Vertical split' },
        ['-'] = { '<cmd>split<cr>', 'Horizontal split' },
        ['?'] = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
        ['h'] = { '<cmd>Telescope help_tags<cr>', 'Help' },
      }, { prefix = '<leader>' })
    end,
  }
}
