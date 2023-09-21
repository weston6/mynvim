-- vim use  %{&fenc} 
local function encoding()
    return vim.opt.fileencoding:get()
  end


function file_format()
    local format = vim.bo.fileformat
    if format == "unix" then
        return "%#format#" ..  "  " .. encoding()
    elseif format == "dos" then
        return "%#format#" .. " 󰨡 " .. encoding()
    elseif format == "mac"  then
        return "%#format#" .. "  " .. encoding()
    end
    return ""
end


