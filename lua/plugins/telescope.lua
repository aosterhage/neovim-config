local telescope = require('telescope')
local telescope_actions = require('telescope.actions')

telescope.setup({
  defaults = {
    prompt_prefix = '🔍 ',
    selection_caret = '> ',
    path_display = { 'smart' },
    mappings = {
      i = {
        ['<C-j>'] = telescope_actions.move_selection_next,
        ['<C-k>'] = telescope_actions.move_selection_previous,
        ['<C-c>'] = telescope_actions.close,

        ['<PageUp>'] = telescope_actions.results_scrolling_up,
        ['<PageDown>'] = telescope_actions.results_scrolling_down,

        ['<C-l>'] = telescope_actions.complete_tag,
        ['<C-_>'] = telescope_actions.which_key
      },

      n = {
        ['<PageUp>'] = telescope_actions.results_scrolling_up,
        ['<PageDown>'] = telescope_actions.results_scrolling_down,

        ['?'] = telescope_actions.which_key
      }
    }
  }
})

--
-- Extensions
--

telescope.load_extension('file_browser')

if pcall(require, 'project_nvim') then
  telescope.load_extension('projects')
end

