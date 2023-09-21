--诊断标志设置
--[[
virtual_text：使用虚拟文本显示诊断消息。

signs：在带有诊断信息的行旁边显示一个标志。

update_in_insert：在插入模式下编辑时更新诊断。

underline：使用下划线显示诊断位置。

severity_sort：按严重性排序诊断。

float：在浮动窗口中显示诊断消息。
--]]

function DiagnosticSetting()
    local signs = {
        { name = "DiagnosticSignError", text = "" },
        { name = "DiagnosticSignWarn", text = "" },
        { name = "DiagnosticSignHint", text = "" },
        { name = "DiagnosticSignInfo", text = "" },
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end

    vim.diagnostic.config({
        virtual_text = true,
        severity_sort = true,
        --float = true,
        --signs = true,
        signs = {
            active = signs, -- show signs
        },
        update_in_insert = true,
        underline = true,
        -- 浮动
        float = {
            focusable = true,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = '',
            prefix = '',
        },
    })
    -- 浮动显示文档和帮助
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "rounded",
    })

end

DiagnosticSetting()


