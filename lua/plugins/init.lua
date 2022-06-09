-- automatically install packer
local packer_bootstrap = false
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing packer...')
  packer_bootstrap = vim.fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
end

local success, packer = pcall(require, 'packer')
if not success then
  error('Packer not installed')
  return
end

-- have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
})

packer.startup(
  function(use)
    -- have packer manage itself
    use { 'wbthomason/packer.nvim' }


    -- my plugins sorted alphabetically
    use { 'goolord/alpha-nvim',                             -- greeter
      requires = {
        { 'kyazdani42/nvim-web-devicons' }
      },
      config = require('plugins.alpha')
    }
    use { 'numToStr/Comment.nvim',                          -- add ease of commenting/uncommenting
      requires = {
        { 'JoosepAlviste/nvim-ts-context-commentstring',    -- change the treesitter `commentstring` based on the current line of source; helps with multi-language files
          requires = { 'nvim-treesitter/nvim-treesitter' }
        }
      },
      config = require('plugins.Comment')
    }
    use { 'stevearc/dressing.nvim',                         -- provide nice default ui for neovim's `vim.input`, `vim.select`, etc.
      config = require('plugins.dressing')
    }
    use { 'antoinemadec/FixCursorHold.nvim'}
    use { 'lewis6991/gitsigns.nvim',                        -- show markers for git changes in a file
      config = require('plugins.gitsigns')
    }
    use { 'lewis6991/impatient.nvim' }                      -- speeds up init and profiles
    use { 'lukas-reineke/indent-blankline.nvim',            -- shows markers for indented lines
      config = require('plugins.indent-blankline')
    }
    use { 'nvim-lualine/lualine.nvim',                      -- status line
      requires = {
        { 'kyazdani42/nvim-web-devicons' }
      },
      config = require('plugins.lualine')
    }
    use { 'EdenEast/nightfox.nvim',                         -- colorschemes
      config = require('plugins.nightfox')
    }
    use { 'windwp/nvim-autopairs',                          -- automatically add and manage pairs (like '()' and '{}')
      config = require('plugins.nvim-autopairs')
    }
    use { 'hrsh7th/nvim-cmp',                               -- completions
      requires = {
        -- needed to show the completion popups
        { 'nvim-lua/popup.nvim' },

        -- for some reason it requires a snippet engine:
        -- https://github.com/hrsh7th/nvim-cmp/issues/373
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
        { 'saadparwaiz1/cmp_luasnip' },

        -- lsp engine
        { 'neovim/nvim-lspconfig' },
        { 'hrsh7th/cmp-nvim-lsp' },

        -- other engines
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' }
      },
      config = require('plugins.nvim-cmp')
    }
    use { 'mfussenegger/nvim-dap',                          -- debugging support via DAP client
      requires = {
        { 'rcarriga/nvim-dap-ui' }
      },
      config = require('plugins.nvim-dap')
    }
    use { 'williamboman/nvim-lsp-installer',                -- install lsp servers easily (even works on Windows!)
      requires = {
        { 'neovim/nvim-lspconfig' }
      },
      config = require('plugins.lsp')
    }
    use { 'kyazdani42/nvim-tree.lua',                       -- directory explorer to replace netrw
      requires = {
        { 'kyazdani42/nvim-web-devicons' }
      },
      config = require('plugins.nvim-tree')
    }
    use { 'nvim-treesitter/nvim-treesitter',                -- easy configuration for treesitter (things like improved syntax highlighting)
      run = { ':TSUpdate' },
      config = require('plugins.nvim-treesitter')
    }
    use { 'kdheepak/tabline.nvim',                          -- tab and buffer line
      config = require('plugins.tabline')
    }
    use { 'nvim-telescope/telescope.nvim',                  -- fuzzy finder for anything
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim',
          run = { 'make' }
        },
        { 'TC72/telescope-tele-tabby.nvim' }                -- add tab support to telescope
      },
      config = require('plugins.telescope')
    }
    use { 'akinsho/toggleterm.nvim',                        -- makes using neovim's terminal easier
      config = require('plugins.toggleterm')
    }
    use { 'moll/vim-bbye' }                                 -- close buffers without closing windows
    use { 'folke/which-key.nvim',                           -- keymaps popup menu
      config = require('plugins.which-key')
    }

    -- automatically install plugins when bootstrapping
    if packer_bootstrap then
      print 'Running PackerSync()...'
      packer.sync()
    end
  end
)

