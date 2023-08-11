-- Nvim-tree: Another file tree
-- WARN: Remove neo-tree.lua first!
return {
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      {'<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle File Tree'},
    },
    dependencies = 'nvim-tree/nvim-tree.lua',
    opts = {}
  },
}
