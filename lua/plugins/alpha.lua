local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.buttons.val = {
	dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
	dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
	dashboard.button('p', '  Find project', ':Telescope projects <CR>'),
	dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
	dashboard.button('F', '  Find text', ':Telescope live_grep <CR>'),
	dashboard.button('c', '  Configuration', ':e ' .. vim.fn.stdpath('config') .. '/init.lua <CR>'),
	dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
}
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)

