require "nvim-treesitter.configs".setup ({

  ensure_installed = { "c", "lua","org","c" },

  sync_install = false,

  auto_install = false,

  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },

  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { 'yaml'},
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
    -- Highlight the entire buffer all at once
    --strategy = require('ts-rainbow').strategy.global,
  }
})

