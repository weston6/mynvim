local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {





  "┌┬┐┌─┐┬─┐┌┬┐┌─┐┬┌─┐┌─┐",
  " │ │ │├┬┘ │ │ ││└─┐├┤ ",
  " ┴ └─┘┴└─ ┴ └─┘┴└─┘└─┘",

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
    dashboard.button( "e", "   打开文件" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "   寻找文件",  ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "s", "   设置" ,     ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "   退出",      ":qa<CR>"),
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