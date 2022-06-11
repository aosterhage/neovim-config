local nvim_autopairs = require('nvim-autopairs')
local nvim_autopairs_completion_cmp = require('nvim-autopairs.completion.cmp')

nvim_autopairs.setup({
  check_ts = true, -- use treesitter to check for pairs
  fast_wrap = {} -- enable fast wrap (A-e to automatically wrap cursor contents with pairs)
})

-- have autopairs work with cmp to auto format pairs
local success, cmp = pcall(require, 'cmp')
if success then
  cmp.event:on('confirm_done', nvim_autopairs_completion_cmp.on_confirm_done({
    map_char = {
      tex = ''
    }
  }
  )
  )
end
