require 'nvim-tree'.setup {
  renderer = {
    root_folder_label = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        default = ' ',
        symlink = ' ',
        git = {
          untracked = '',
        }
      },
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        exclude = {
          filetype = {
            "packer",
            "qf"
          },
          buftype = {
            "terminal",
            "help"
          }
        },
      },
    },
  },
  filters = {
    exclude = { '.git', 'node_modules', '.cache' },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },

  hijack_directories = { enable = true },
  view = {
    width = "25%",
    side = "left",
  },
}
