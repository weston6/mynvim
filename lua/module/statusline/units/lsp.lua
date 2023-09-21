-- 状态栏显示lsp状态


local spinners = { "", "󰪞", "󰪟", "󰪠", "󰪢", "󰪣", "󰪤", "󰪥" }
local ms = vim.loop.hrtime() / 1000000
local frame = math.floor(ms / 120) % #spinners
local content = string.format(" %s ", spinners[frame + 1])


function lsp()
    local msg = ''
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return "%#lsp#" .. content .. client.name
      end
    end
    return msg
end


