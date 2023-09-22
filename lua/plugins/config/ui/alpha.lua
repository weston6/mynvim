local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                      ",
    "                      ",
    "                      ",
    "                      ",
    "                      ",
    "┌┬┐┌─┐┬─┐┌┬┐┌─┐┬┌─┐┌─┐",
    " │ │ │├┬┘ │ │ ││└─┐├┤ ",
    " ┴ └─┘┴└─ ┴ └─┘┴└─┘└─┘",
    "                      ",
    "                      ",
    "                      ",

    -- "████████╗ ██████╗ ██████╗ ████████╗ ██████╗ ██╗███████╗███████╗",
    -- "╚══██╔══╝██╔═══██╗██╔══██╗╚══██╔══╝██╔═══██╗██║██╔════╝██╔════╝",
    -- "   ██║   ██║   ██║██████╔╝   ██║   ██║   ██║██║███████╗█████╗  ",
    -- "   ██║   ██║   ██║██╔══██╗   ██║   ██║   ██║██║╚════██║██╔══╝  ",
    -- "   ██║   ╚██████╔╝██║  ██║   ██║   ╚██████╔╝██║███████║███████╗",
    -- "   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝╚══════╝╚══════╝",


 -- "  ▄▄▄█████▓ ▒█████   ██▀███  ▄▄▄█████▓ ▒█████   ██▓  ██████ ▓█████ ",
 -- "  ▓  ██▒ ▓▒▒██▒  ██▒▓██ ▒ ██▒▓  ██▒ ▓▒▒██▒  ██▒▓██▒▒██    ▒ ▓█   ▀ ",
 -- "  ▒ ▓██░ ▒░▒██░  ██▒▓██ ░▄█ ▒▒ ▓██░ ▒░▒██░  ██▒▒██▒░ ▓██▄   ▒███   ",
 -- "  ░ ▓██▓ ░ ▒██   ██░▒██▀▀█▄  ░ ▓██▓ ░ ▒██   ██░░██░  ▒   ██▒▒▓█  ▄ ",
 -- "    ▒██▒ ░ ░ ████▓▒░░██▓ ▒██▒  ▒██▒ ░ ░ ████▓▒░░██░▒██████▒▒░▒████▒",
 -- "    ▒ ░░   ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░  ▒ ░░   ░ ▒░▒░▒░ ░▓  ▒ ▒▓▒ ▒ ░░░ ▒░ ░",
 -- "      ░      ░ ▒ ▒░   ░▒ ░ ▒░    ░      ░ ▒ ▒░  ▒ ░░ ░▒  ░ ░ ░ ░  ░",
 -- "    ░      ░ ░ ░ ▒    ░░   ░   ░      ░ ░ ░ ▒   ▒ ░░  ░  ░     ░   ",
 -- "               ░ ░     ░                  ░ ░   ░        ░     ░  ░",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "   Open File" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "   Find File",  ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "s", "   Setting" ,     ":e $MYVIMRC | :cd %:p:h | NvimTreeToggle <CR>"),
    dashboard.button( "q", "   Quit",      ":qa<CR>"),
}


local fortune = require("alpha.fortune")

--local fortune =require("lazy.status").has_updates
dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
