-- Core --
vim.opt.backup = false -- don't create backups
vim.opt.clipboard = 'unnamedplus' -- always use the clipboard for all operations (don't require interacting with the '+' or '*' registers)
vim.opt.fileencoding = 'utf-8' -- encode everything as utf-8
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = 'a' -- allow the mouse to be used in neovim
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- don't create a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- Edit --
vim.opt.conceallevel = 0 -- don't conceal any text
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.formatoptions = vim.opt.formatoptions - 'cro' -- don't try to be smart when editing comment blocks
vim.opt.hidden = true -- hide buffers when abandoned
vim.opt.iskeyword = vim.opt.iskeyword + '-' -- make '-' a keyword (e.g. treat hyphenated words as a single word)
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.whichwrap = vim.opt.whichwrap + '<,>,[,],h,l' -- automatically wrap when hitting start/end of lines

-- Ui --
vim.opt.completeopt = { 'menuone', 'noselect' } -- use the popup menu even if there's only one match and require the user to select the options
vim.opt.cursorline = true -- highlight the current line
vim.opt.guifont = { 'Hack Nerd Font', ':h10' }
vim.opt.number = true -- set numbered lines
vim.opt.numberwidth = 4 -- set number column width
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.scrolloff = 8 -- number of lines to keep above and below the cursor at all times
vim.opt.shortmess = vim.opt.shortmess + 'c' -- 'c': don't give |ins-completion-menu| messages
vim.opt.showmode = false -- don't show the mode on the last line, we will include it in lualine
vim.opt.sidescrolloff = 8 -- number of columns to keep to the left and right of the cursor at all times
vim.opt.signcolumn = 'yes' -- always show the sign column, otherwise it would shift the text each time
vim.opt.winbar = '%f' -- show winbar for each window with the current file path
vim.opt.wrap = false -- display lines as one long line

-- don't list quickfix buffers
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  command = 'set nobuflisted',
})

-- enable word wrap and spell check for gitcommit and markdown
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'gitcommit', 'markdown' },
  command = 'setlocal wrap | setlocal spell',
})
