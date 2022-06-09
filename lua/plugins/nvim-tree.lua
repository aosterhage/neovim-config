local nvim_tree = require('nvim-tree')
local nvim_tree_config = require('nvim-tree.config')

nvim_tree.setup({
  disable_netrw = true,     -- completely disable netrw

  update_focused_file = {
    enable = true           -- update the tree to show the currently focused file
  },
  system_open = {
    cmd = nil,              -- nil looks better than '', either way it shouldn't do anything
  },
  view = {
    mappings = {
      list = {
        { key = { 'l', '<CR>', 'o' }, cb = nvim_tree_config.nvim_tree_callback('edit') },
        { key = 'h', cb = nvim_tree_config.nvim_tree_callback('close_node') },
        { key = 'v', cb = nvim_tree_config.nvim_tree_callback('vsplit') }
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false      -- open files in the window which last opened the tree
      }
    }
  }
})

