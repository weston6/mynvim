require("module.statusline.units.filename")
require("module.statusline.units.error_msg")
require("module.statusline.units.file_format")
require("module.statusline.units.hostname")
require("module.statusline.units.location")
require("module.statusline.units.lsp")
require("module.statusline.units.mode")
require("module.statusline.units.git")

require("module.statusline.hl.color")


function statusline()


    local left = mode()
        .. filename()
        ..  ""
        ..  error_msg()


    local right =lsp()
        .. " "
        .. file_format()
        .. " "
        .. location()


    local line = left  ..  "%="  ..  right

    color()

    return line
end


vim.o.statusline = "%!v:lua.statusline()"
