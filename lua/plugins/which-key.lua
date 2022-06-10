local which_key = require('which-key')
which_key.setup({})

local opts = {
  prefix = '<Leader>'
}

which_key.register({
  ['e'] = { '<Cmd>NvimTreeToggle<CR>', 'Explorer' },
  ['w'] = { '<Cmd>w!<CR>', 'Save' },
  ['q'] = { '<Cmd>q!<CR>', 'Quit' },
  ['h'] = { '<Cmd>nohlsearch<CR>', 'No Highlight' },
}, opts)

which_key.register({
  b = {
    name = 'buffer',

    c = { '<Cmd>Bdelete!<CR>', 'Close' },
    s = { '<Cmd>lua require(\'telescope.builtin\').buffers(require(\'telescope.themes\').get_dropdown({previewer = false}))<CR>', 'Search' },
    n = { '<Cmd>bnext<CR>', 'Next' },
    N = { '<Cmd>enew<CR>', 'New' },
    p = { '<Cmd>bprevious<CR>', 'Previous' }
  }
}, opts)

which_key.register({
  g = {
    name = 'git',

    b = { '<Cmd>Gitsigns blame_line<CR>', 'Blame' },
    B = { '<Cmd>Gitsigns toggle_current_line_blame()<CR>', 'Toggle Blame' },
    c = { '<Cmd>Telescope git_commits<CR>', 'Search Commits' },
    d = { '<Cmd>Gitsigns diffthis HEAD<CR>', 'Diff' },
    f = { '<Cmd>Telescope git_status<CR>', 'Search Changed Files' },
    n = { '<Cmd>Gitsigns next_hunk<CR>', 'Next Hunk' },
    p = { '<Cmd>Gitsigns prev_hunk<CR>', 'Previous Hunk' },
    P = { '<Cmd>Gitsigns preview_hunk<CR>', 'Preview Hunk' },
    r = { '<Cmd>Gitsigns reset_hunk<CR>', 'Reset Hunk' },
    R = { '<Cmd>Gitsigns reset_buffer<CR>', 'Reset Buffer' },
    s = { '<Cmd>Gitsigns stage_hunk<CR>', 'Stage Hunk' },
    S = { '<Cmd>Gitsigns stage_buffer<CR>', 'Stage Buffer' },
    u = { '<Cmd>Gitsigns undo_stage_hunk<CR>', 'Undo Stage Hunk' }
  }
}, opts)

which_key.register({
  l = {
    name = 'lsp',

    a = { '<Cmd>lua vim.lsp.buf.code_action()<CR>', 'Code Action' },
    d = { '<Cmd>Telescope diagnostics bufnr=0<CR>', 'Document Diagnostics' },
    w = { '<Cmd>Telescope diagnostics<CR>', 'Workspace Diagnostics' },
    f = { '<Cmd>lua vim.lsp.buf.formatting()<CR>', 'Format' },
    i = { '<Cmd>LspInfo<CR>', 'Server Information' },
    I = { '<Cmd>LspInstallInfo<CR>', 'Server Install Information' },
    l = { '<Cmd>lua vim.lsp.codelens.run()<CR>', 'CodeLens Action' },
    n = { '<Cmd>lua vim.diagnostic.goto_next()<CR>', 'Next Diagnostic' },
    p = { '<Cmd>lua vim.diagnostic.goto_prev()<CR>', 'Prev Diagnostic' },
    q = { '<Cmd>lua vim.diagnostic.setloclist()<CR>', 'Quickfix Diagnostics' },
    r = { '<Cmd>lua vim.lsp.buf.rename()<CR>', 'Rename Symbol' },
    s = { '<Cmd>Telescope lsp_document_symbols<CR>', 'Document Symbols' },
    S = { '<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>', 'Workspace Symbols' }
  }
}, opts)

which_key.register({
  p = {
    name = 'project',

    s = { '<Cmd>lua require(\'telescope\').extensions.projects.projects()<CR>', 'Search Projects' }
  }
}, opts)

which_key.register({
  s = {
    name = 'search',

    b = { '<Cmd>Telescope git_branches<CR>', 'Branches' },
    c = { '<Cmd>Telescope commands<CR>', 'Commands' },
    f = { '<Cmd>lua require(\'telescope.builtin\').find_files(require(\'telescope.themes\').get_dropdown({previewer = false}))<CR>', 'Workspace Files' },
    h = { '<Cmd>Telescope help_tags<CR>', 'Help' },
    k = { '<Cmd>Telescope keymaps<CR>', 'Keymaps' },
    m = { '<Cmd>Telescope man_pages<CR>', 'Man Pages' },
    r = { '<Cmd>Telescope oldfiles<CR>', 'Recent Files' },
    R = { '<Cmd>Telescope registers<CR>', 'Registers' },
    t = { '<Cmd>Telescope current_buffer_fuzzy_find theme=dropdown<CR>', 'Buffer Text' },
    T = { '<Cmd>Telescope live_grep<CR>', 'Workspace Text' }
  },
}, opts)

which_key.register({
  t = {
    name = 'tab',

    c = { '<Cmd>tabclose<CR>', 'Close' },
    s = { '<Cmd>Telescope tele_tabby list<CR>', 'Search' },
    n = { '<Cmd>tabnext<CR>', 'Next' },
    N = { '<Cmd>tabnew<CR>', 'New' },
    p = { '<Cmd>tabprev<CR>', 'Previous' }
  }
}, opts)

which_key.register({
  T = {
    name = 'terminal',

    f = { '<Cmd>ToggleTerm direction=float<CR>', 'Floating' },
    h = { '<Cmd>ToggleTerm size=10 direction=horizontal<CR>', 'Horizontal' },
    t = { '<Cmd>ToggleTerm direction=tab<CR>', 'Tab' },
    v = { '<Cmd>ToggleTerm size=80 direction=vertical<CR>', 'Vertical' }
  }
}, opts)

which_key.register({
  w = {
    name = 'window',

    c = { '<Cmd>close<CR>', 'Close' },
    h = { '<Cmd>wincmd h<CR>', 'Move Left' },
    H = { '<Cmd>split<CR>', 'New Horizontal'},
    j = { '<Cmd>wincmd j<CR>', 'Move Left' },
    k = { '<Cmd>wincmd k<CR>', 'Move Left' },
    l = { '<Cmd>wincmd l<CR>', 'Move Left' },
    v = { '<Cmd>vsplit<CR', 'New Vertical'},
  }
}, opts)

