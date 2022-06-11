local lualine = require('lualine')

local function lsp_name()
  local name = ''

  local active_clients = vim.lsp.get_active_clients({bufnr = vim.fn.bufnr('%')})
  if #active_clients ~= 0 then
    name = active_clients[1].name
  end

  return name
end

lualine.setup({
	options = {
		disabled_filetypes = { 'alpha' },
    globalstatus = true
	},
  sections = {
    lualine_a = {'mode'},
    lualine_c = {'diff'},
    lualine_b = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_x = {'diagnostics', lsp_name, 'filetype'},
    lualine_y = {'progress', 'location'},
    lualine_z = {'fileformat', 'encoding'}}
})

