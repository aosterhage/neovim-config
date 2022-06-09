local opts = {
  noremap = true,
  silent = true
}

--
-- All Modes --
--

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--
-- Normal --
--

-- Navigate windows with just C-<direction>
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W>h', opts)
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W>j', opts)
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W>k', opts)
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W>l', opts)

-- Resize windows with C-<arrows>
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers with just S-<direction>
vim.api.nvim_set_keymap('n', '<S-L>', ':bnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-H>', ':bprevious<CR>', opts)

-- Move line up and down using A-<direction>
vim.api.nvim_set_keymap('n', '<A-J>', '<Esc>:move .+1<CR>==gi', opts)
vim.api.nvim_set_keymap('n', '<A-K>', '<Esc>:move .-2<CR>==gi', opts)

--
-- Insert --
--

--
-- Visual --
--

-- Stay in visual mode after indenting
vim.api.nvim_set_keymap('v', '<', '<gv', opts)
vim.api.nvim_set_keymap('v', '>', '>gv', opts)

-- Move lines up and down using A-<direction>
vim.api.nvim_set_keymap('v', '<A-J>', ':move .+1<CR>==', opts)
vim.api.nvim_set_keymap('v', '<A-K>', ':move .-2<CR>==', opts)

-- Keep original register contents when pasting over a selection
vim.api.nvim_set_keymap('v', 'p', '"_dP', opts)

--
-- Visual Block --
--

-- Move lines up and down using A-<direction>
vim.api.nvim_set_keymap('x', '<A-J>', ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap('x', '<A-K>', ":move '<-2<CR>gv-gv", opts)

--
-- Terminal --
--

-- Use the same key bindings for switching windows in normal mode
-- Allow accessing normal mode in a terminal
vim.api.nvim_set_keymap('t', '<C-[>', '<C-\\><C-N>', opts)
vim.api.nvim_set_keymap('t', '<C-H>', '<C-\\><C-N><C-W>H', opts)
vim.api.nvim_set_keymap('t', '<C-J>', '<C-\\><C-N><C-W>J', opts)
vim.api.nvim_set_keymap('t', '<C-K>', '<C-\\><C-N><C-W>K', opts)
vim.api.nvim_set_keymap('t', '<C-L>', '<C-\\><C-N><C-W>L', opts)

