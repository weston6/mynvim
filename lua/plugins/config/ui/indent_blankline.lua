vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = "",
  indentLine_enabled = 1,
  filetype_exclude = {
    "help",
    "terminal",
    "dasher",
    "packer",
    "lspinfo",
    "alpha",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
}


