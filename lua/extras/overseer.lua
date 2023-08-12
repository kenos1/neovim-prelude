-- Overseer: A task runner and job management plugin
return {
  {
    'stevearc/overseer.nvim',
    keys = {
      { '<leader>rr', '<cmd>OverseerRun<cr>',    desc = 'Run task' },
      { '<leader>rl', '<cmd>OverseerToggle<cr>', desc = 'Tasks list' },
    },
    dependencies = 'akinsho/toggleterm.nvim',
    opts = {
      strategy = 'toggleterm'
    }
  },
  -- Enable toggleterm for overseer integration
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {}
  }
}
