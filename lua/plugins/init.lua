------------[bootstrap lazy.nvim]-------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)




------------[ 配置 ]------------------------------

require("lazy").setup({

----------lsp---------------

{
  'neovim/nvim-lspconfig',
  config = function()
    require("plugins.config.lsp.nvim-lspconfig")
  end
},

{
    "williamboman/mason.nvim",
    config = function()
      require("plugins.config.lsp.mason")
    end
},

{
  "williamboman/mason-lspconfig.nvim",
  lazy = true,
  config = function ()
    require("plugins.config.lsp.mason-lspconfig")
  end
},

{
  "hrsh7th/nvim-cmp",
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
  },
  config = function()
    require("plugins.config.lsp.nvim-cmp")
  end
},



{
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require("plugins.config.lsp.nvim-treesitter")
  end
},
{'hiphish/nvim-ts-rainbow2'},

{
  "p00f/clangd_extensions.nvim",
  config =  function ()
    require("plugins.config.lsp.language.clangd")
  end
},

---------edit----------------

{
  "folke/flash.nvim",
  config = function()
    require("plugins.config.edit.flash")
  end
},
{
  'numToStr/Comment.nvim',
  lazy = true,
  config = function ()
    require("plugins.config.edit.comment")
  end
},


-----------ui----------------
{
    'goolord/alpha-nvim',
    config = function ()
        require("plugins.config.ui.alpha")
    end
},

{
  "lukas-reineke/indent-blankline.nvim",

  config = function ()
    require("plugins.config.ui.indent_blankline")
  end
},

{
  'lewis6991/gitsigns.nvim',

  config = function ()
    require("plugins.config.ui.gitsigns")
  end
},

{
  "nvim-tree/nvim-web-devicons",

  config = function ()
    require("plugins.config.ui.web-devicons")
  end
},

---------org mode------------
{
  'nvim-orgmode/orgmode',
  config = function()
   require("plugins.config.org.org-mode")
  end,
},

{
  'akinsho/org-bullets.nvim',
  config = function()
    require("plugins.config.org.org-bullets")
  end
},

---------tools---------------

{
  'nvim-telescope/telescope.nvim',
},

{
  "ivanjermakov/troublesum.nvim",

  config = function ()
    require("plugins.config.tools.troublesum")
  end
},

{
  "p00f/godbolt.nvim",

  config = function ()
    require("plugins.config.tools.godbolt")
  end

},

{
  "folke/trouble.nvim",
  lazy = true,
},

{
  "akinsho/toggleterm.nvim",
  config = function ()
    require("plugins.config.tools.toggleterm")
  end
},

{
  'kyazdani42/nvim-tree.lua',
  lazy = true,
  cmd = "NvimTreeToggle",
  config = function()
    require('plugins.config.tools.nvim-tree')
  end
},

{
  "folke/which-key.nvim",
  config = function ()
    require("plugins.config.tools.which-key")
  end
},

{'nvim-lua/plenary.nvim'},

--------themes---------------


{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
{'projekt0n/github-nvim-theme'},
{"ellisonleao/gruvbox.nvim"},
{ 'projekt0n/caret.nvim' },
{'navarasu/onedark.nvim'},
{"nyoom-engineering/oxocarbon.nvim"},

})
