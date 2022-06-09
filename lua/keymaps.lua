local opts = { noremap = true, silent = true }

-- Modes
--   ''   All
--   'n'  Normal
--   'i'  Insert
--   'v'  Visual
--   'x'  Visual Block
--   't'  Terminal
--   'c'  Command

-- All Modes --
-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal --
-- Navigate windows with just C-<direction>
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', opts)
-- Resize windows with C-<arrows>
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)
-- Navigate buffers with just S-<direction>
vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-h>', ':bprevious<CR>', opts)
-- Move line up and down using A-<direction>
vim.api.nvim_set_keymap('n', '<A-j>', '<Esc>:move .+1<CR>==gi', opts)
vim.api.nvim_set_keymap('n', '<A-k>', '<Esc>:move .-2<CR>==gi', opts)

-- Insert --

-- Visual --
-- Stay in visual mode after indenting
vim.api.nvim_set_keymap('v', '<', '<gv', opts)
vim.api.nvim_set_keymap('v', '>', '>gv', opts)
-- Move lines up and down using A-<direction>
vim.api.nvim_set_keymap('v', '<A-j>', ':move .+1<CR>==', opts)
vim.api.nvim_set_keymap('v', '<A-k>', ':move .-2<CR>==', opts)
-- Keep original register contents when pasting over a selection
vim.api.nvim_set_keymap('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move lines up and down using A-<direction>
vim.api.nvim_set_keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Use the same key bindings for switching windows in normal mode
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-N><C-w>h', opts)
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-N><C-w>j', opts)
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-N><C-w>k', opts)
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-N><C-w>l', opts)
-- Allow accessing normal mode in a terminal
vim.api.nvim_set_keymap('t', '<C-[>', '<C-\\><C-N>', opts)

