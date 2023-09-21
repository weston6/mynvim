-- 进度
local function progress()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	-- local chars = { "_", "▁", "▂", "▃", "▄", "▅", "▆", "▇", "█" }
    local chars = { "", "", "", "", "", "", "", "", "", "", "", "", "", "" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end



function location()
    local line = vim.fn.line('.')
    local col = vim.fn.virtcol('.')
    return "%#location#" .. " " ..  string.format('󰧁 %-2d 󰧈 %-2d ', col, line) .. progress() .. " "
  end


