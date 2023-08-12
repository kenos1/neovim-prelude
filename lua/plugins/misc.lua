-- Misc. plugins that don't really fit into any category
return {
  -- Auto indent detection
  {
    'NMAC427/guess-indent.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {}
  },

  -- Better buffer removal
  {
    'echasnovski/mini.bufremove',
    event = 'VimEnter',
    opts = {}
  },

  -- Autopairs
  {
    'echasnovski/mini.pairs',
    event = 'InsertEnter',
    opts = {}
  },

  -- Surround
  {
    'echasnovski/mini.surround',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {}
  },

  -- Bracket navigation
  {
    'echasnovski/mini.bracketed',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {}
  },

  -- Better text movement
  {
    'echasnovski/mini.move',
    keys = {
      '<M-h>',
      '<M-j>',
      '<M-k>',
      '<M-l>',
    },
    opts = {}
  },

  -- Illumination
  {
    'RRethy/vim-illuminate',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      require('illuminate').configure {}
    end
  },

  -- Indent lines
  {
    'lukas-reineke/indent-blankline.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    keys = {
      { '<leader>ui', '<cmd>IndentBlanklineToggle<cr>', desc = 'Toggle indent lines' },
    },
    opts = {
      show_current_context = true,
      show_current_context_start = true,
    }
  },
}
