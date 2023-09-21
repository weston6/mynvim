
-- cmp theme 
local hl = vim.api.nvim_set_hl
-- gray
hl(0, 'CmpItemAbbrDeprecated', { bg='NONE', strikethrough=true, fg='#808080' })
-- blue
hl(0, 'CmpItemAbbrMatch', { bg='NONE', fg='#569CD6' })
hl(0, 'CmpItemAbbrMatchFuzzy', { link='CmpIntemAbbrMatch' })
-- light blue
hl(0, 'CmpItemKindVariable', { bg='NONE', fg='#9CDCFE' })
hl(0, 'CmpItemKindInterface', { link='CmpItemKindVariable' })
hl(0, 'CmpItemKindText', { link='CmpItemKindVariable' })
-- pink
hl(0, 'CmpItemKindFunction', { bg='NONE', fg='#C586C0' })
hl(0, 'CmpItemKindMethod', { link='CmpItemKindFunction' })
-- front
hl(0, 'CmpItemKindKeyword', { bg='NONE', fg='#D4D4D4' })
hl(0, 'CmpItemKindProperty', { link='CmpItemKindKeyword' })
hl(0, 'CmpItemKindUnit', { link='CmpItemKindKeyword' })



local kind_icon =  {
  Namespace = "󰌗",
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰆧",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈚",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰊄",
  Table = "",
  Object = "󰅩",
  Tag = "",
  Array = "[]",
  Boolean = "",
  Number = "",
  Null = "󰟢",
  String = "󰉿",
  Calendar = "",
  Watch = "󰥔",
  Package = "",
  Copilot = "",
  Codeium = "",
  TabNine = "",
  calc = " 󰃬 ",
}

-- cmp settings
local cmp = require 'cmp'
cmp.setup({

    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },

    window = {
      --completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },

    formatting = {
        fields = {"abbr", "kind" , "menu" },
        format = function(_, vim_item)
                    vim_item.kind = (kind_icon[vim_item.kind] or '') .."  " .. vim_item.kind
                    return vim_item
                 end,
    },
    experimental = {
        ghost_text = true,
    },

    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },

    --设置 快捷键
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }
    }),

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'nvim_lsp_signature_help' },
      { name = 'luasnip' },
      { name = 'nvim_lua' },
      { name = 'path' },
      { name = 'buffer' },
       { name = 'orgmode' },
    })
})



