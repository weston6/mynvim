require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },

   -- custom_highlights = function(colors)
   --      return {
   --          --Comment = { fg = colors.flamingo },
   --          --TabLineSel = { fg = colors.pink },
   --          --CmpBorder = { bg = colors.red },
   --          --Pmenu = { bg = colors.none },
   --          --StatusLine = { bg = colors.surface0 },
   --      }
   --  end,
    integrations = {
        cmp = false,
        alpha = true,
        bufferline = false,
        mason = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        flash = true,
        ts_rainbow2 = true,
        telescope = {
            enabled = true,
            style = "nvchad"
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        dap = {
            enabled = true,
            enable_ui = true, -- enable nvim-dap-ui
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },

        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})


-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
