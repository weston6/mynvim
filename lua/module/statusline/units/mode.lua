

-- 状态栏模式获取

-- local mode = {
--     c = "🅒",
--     i = "🅘",
--     n = "🅝",
--     r = "🅡",
--     s = "🅢",
--     t = "🅣",
--     v = "🅥"
-- }
--

local map = {
    ['n']      = '  ', -- ' 󰝆 ',
    ['no']     = 'O-PENDING',
    ['nov']    = 'O-PENDING',
    ['noV']    = 'O-PENDING',
    ['no\22']  = 'O-PENDING',
    ['niI']    = ' 󰝆 ',
    ['niR']    = ' 󰝆 ',
    ['niV']    = ' 󰝆 ',
    ['nt']     = ' 󰝆 ',
    ['ntT']    = ' 󰝆 ',
    ['v']      = '  ',
    ['vs']     = '  ',
    ['V']      = 'V-LINE',
    ['Vs']     = 'V-LINE',
    ['\22']   = 'V-BLOCK',
    ['\22s']  = 'V-BLOCK',
    ['s']      = 'SELECT',
    ['S']      = 'S-LINE',
    ['\19']   = 'S-BLOCK',
    ['i']      = ' 󱐋 ',
    ['ic']     = ' 󱐋 ',
    ['ix']     = ' 󱐋 ',
    ['R']      = 'REPLACE',
    ['Rc']     = 'REPLACE',
    ['Rx']     = 'REPLACE',
    ['Rv']     = 'V-REPLACE',
    ['Rvc']    = 'V-REPLACE',
    ['Rvx']    = 'V-REPLACE',
    ['c']      = '  ',
    ['cv']     = 'EX',
    ['ce']     = 'EX',
    ['r']      = 'REPLACE',
    ['rm']     = 'MORE',
    ['r?']     = 'CONFIRM',
    ['!']      = 'SHELL',
    ['t']      = '  ',
  }

function mode()

    local mode_code = vim.api.nvim_get_mode().mode
    if map[mode_code] == nil then
      return "%#mode#" .. mode_code
    end
    return "%#mode#"  .. map[mode_code]
end



