-- Telescope: A fuzzy finder
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    keys = {
      -- Search keybinds
      { '<leader>sf', '<cmd>Telescope find_files<cr>',   desc = 'Files' },
      { '<leader>sg', '<cmd>Telescope live_grep<cr>',    desc = 'Live grep' },
      { '<leader>sb', '<cmd>Telescope buffers<cr>',      desc = 'Buffers' },

      -- UI keybinds
      { '<leader>uc', '<cmd>Telescope colorscheme<cr>',  desc = 'Set colorscheme' },
      { '<leader>uh', '<cmd>Telescope highlights<cr>',   desc = 'Highlights' },

      -- Git keybinds
      { '<leader>gs', '<cmd>Telescope git_status<cr>',   desc = 'Status' },
      { '<leader>gb', '<cmd>Telescope git_branches<cr>', desc = 'Branches' },
      { '<leader>gc', '<cmd>Telescope git_commits<cr>',  desc = 'Commits' },

      -- LSP Keybinds
      { '<leader>ld', '<cmd>Telescope diagnostics<cr>',  desc = 'Diagnostics' },
    },
    cmd = "Telescope",
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opt = {}
  }
}
