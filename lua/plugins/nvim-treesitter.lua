local nvim_treesitter_configs = require('nvim-treesitter.configs')

nvim_treesitter_configs.setup({
  ensure_installed = 'all',
  ignore_install = { 'json5', 'jsonc' },
  autopairs = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true,
    disable = {}
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false
  }
})

