-- 状态栏显示错误信息

local symbol = {
    Error = "  ",
    Warn  = "  ",
    Hint  = " 󰌶 ",
    Info  = "   ",
}

function error_msg()
    -- count the number of diagnostics with severity warning
    local num_errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    -- If there are any errors only show the error count, don't include the number of warnings
    if num_errors > 0 then
      return "%#errors#" .. symbol.Error  .. num_errors
    end
    -- Otherwise show amount of warnings, or nothing if there aren't any.
    local num_warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    if num_warnings > 0 then
      return "%#warnings#" .. symbol.Warn .. num_warnings
    end

    local num_hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
    if num_hints > 0 then
      return "%#hints#" .. symbol.Hint .. num_hints
    end

    local num_infos = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
    if num_infos > 0 then
      return "%#infos#" .. symbol.Info .. num_infos
     end
    return ""
  end



