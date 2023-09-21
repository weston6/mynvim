local function type()
    local devicons = require('nvim-web-devicons')

   --local type = vim.bo.filetype
    local filename = vim.fn.bufname()
    local ext = vim.fn.fnamemodify(filename, ':e')

    local icon = devicons.get_icon(filename, ext, { default = true })
    return icon
end


local function modified()
    -- 文件修改状态
    if vim.bo.modified then
        return "  " --'[+]'
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return "  " --'[-] '
    end
    return ""
end


local function readonly()
    if vim.bo.readonly then
      return  "  " --"󰑇" ,'[RO]'
    end
    return ''
  end

local function filesize()
    local file = vim.fn.expand('%:p')
    if file == nil or #file == 0 then
      return ''
    end
    local size = vim.fn.getfsize(file)
    if size <= 0 then
      return ''
    end

    local suffixes = { 'b', 'k', 'm', 'g' }

    local i = 1
    while size > 1024 and i < #suffixes do
      size = size / 1024
      i = i + 1
    end

    local format = i == 1 and '%d%s' or '%.1f%s'
    if (string.format(format, size,suffixes[i])) == nil then
        return ''
    end
    return "%#filesize#" .. " " .. ' ' .. string.format(format, size, suffixes[i])
  end

function filename()
    local name = vim.fn.expand("%:t")
    if  name ~= "" then
        return "%#name#"  .. " " ..type() .. " "  .. name .. "" .. modified() .. "" .. readonly() .. " " .. filesize() .. " "
    end
    return "%#name#" .. " 󰈚".. " Empty "
end


