function color()

    hl = vim.api.nvim_set_hl

    -- StatusLine
    hl(0, "sep", { fg = "#89b4fa"})
    -- hostname
    hl(0, "fedora",     {fg = "#7287fd"})
    hl(0, "ubuntu",     {fg = "#fab387"})
    hl(0, "arch",       {fg = "#89b4fa"})
    hl(0, "debian",     {fg = "#eba0ac"})
    hl(0, "hackintosh", {fg = "#b4befe"})
    -- error_msg
    hl(0, "warnings",   {fg = "#ffb86c"})
    hl(0, "errors",     {fg = "#f38ba8"})
    hl(0, "hints",      {fg = "#f9e2af"})
    hl(0, "infos",      {fg = "#fab387"})
    -- format
    hl(0,"format",      {fg = "#cba6f7"})
    -- filename
    hl(0, "name",       {fg = "#a6e3a1"})
    hl(0, "filesize",   {fg = "#ed8796"})

    -- location
    hl(0, "location",   {fg = "#eba0ac"})
    --lsp
    hl(0, "lsp",        {fg = "#fab387"})
    --mode
    hl(0, "mode",       {fg = "#f5c2e7"})
    --git
    hl(0, "git",        {fg = "#81c8be"})
end
