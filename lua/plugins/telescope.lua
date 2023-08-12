-- Telescope: A fuzzy finder
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    keys = {
      { '<leader>sf', '<cmd>Telescope find_files<cr>',  desc = 'Files' },
      { '<leader>sg', '<cmd>Telescope live_grep<cr>',   desc = 'Live grep' },
      { '<leader>sb', '<cmd>Telescope buffers<cr>',     desc = 'Buffers' },
      { '<leader>uc', '<cmd>Telescope colorscheme<cr>', desc = 'Set colorscheme' },
      { '<leader>uh', '<cmd>Telescope highlights<cr>',  desc = 'Highlights' },
    },
    cmd = "Telescope",
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opt = {}
  }
}
