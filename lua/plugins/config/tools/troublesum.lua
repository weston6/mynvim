require("troublesum").setup({
    enabled = true,
    autocmd = true,
    severity_format = { "", "", "", "" },
    severity_highlight = { "DiagnosticError", "DiagnosticWarn", "DiagnosticInfo", "DiagnosticHint" },
    format = function(counts) end,
    display_summary = function(bufnr, ns, text) end
})