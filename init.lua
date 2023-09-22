--[[

▓▓▓▓▓▓▓ ▓▓▓▓▓▓   ▓▓▓▓▓   ▓▓▓  ▓▓▓ ▓▓▓▓▓  ▓▓▓▓ ▓▓▓▓
▓▓   ▓▓ ▓▓      ▓▓   ▓▓  ▓▓    ▓▓  ▓▓▓  ▓▓▓ ▓▓▓ ▓▓▓
▓▓   ▓▓ ▓▓     ▓▓▓   ▓▓▓ ▓▓▓  ▓▓▓  ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓     ▓▓     ▓▓  ▓▓▓▓▓▓   ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓▓▓▓▓ ▓▓  ♥  ▓▓   ▓▓▓▓    ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓     ▓▓     ▓▓   ▓▓▓▓    ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓     ▓▓▓   ▓▓▓   ▓▓▓▓    ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓      ▓▓   ▓▓    ▓▓▓▓    ▓▓▓  ▓▓  ▓▓▓  ▓▓
▓▓   ▓▓ ▓▓▓▓▓▓   ▓▓▓▓▓      ▓▓    ▓▓▓▓▓ ▓▓  ▓▓▓  ▓▓

       copyright ⓒ  weston @ 2017-2023
--]]



local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end


load("plugins")
load("setting")
load("module")
load("themes.catppuccin")

function FocusLost_save()
    vim.cmd([[au FocusLost "expand("%")" :wa]])
    if  vim.cmd([[au FocusLost "expand("%")" :wa]]) == true then
        print("save")
    end
end

FocusLost_save()

print("hello")
