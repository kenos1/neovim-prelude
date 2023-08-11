-- Neo-tree: A file tree
return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    keys = {
      {'<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle File Tree'},
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",     
    },
    opts = {}
  },
}
