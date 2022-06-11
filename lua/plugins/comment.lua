local comment = require('Comment')
local comment_utils = require('Comment.utils')
local ts_context_commentstring_utils = require('ts_context_commentstring.utils')
local ts_context_commentstring_internal = require('ts_context_commentstring.internal')

comment.setup({
  pre_hook = function(ctx)

    local type = ctx.ctype == comment_utils.ctype.line and '__default' or '__multiline'

    local location = nil
    if ctx.ctype == comment_utils.ctype.block then
      location = ts_context_commentstring_utils.get_cursor_location()
    elseif ctx.cmotion == comment_utils.cmotion.v or ctx.cmotion == comment_utils.cmotion.V then
      location = ts_context_commentstring_utils.get_visual_start_location()
    end

    return ts_context_commentstring_internal.calculate_commentstring({
      key = type,
      location = location,
    })
  end
})
