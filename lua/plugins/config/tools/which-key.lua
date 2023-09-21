local wk = require("which-key")

wk.setup({
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
    padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    zindex = 1000, -- positive value to position WhichKey above other floating windows.
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
})




local mappings = {
  q = {
    name = 'File',
    q = { ":q<cr>", "Quit" },
    w = { ":wq<cr>", "Save & Quit" },
    s = { ":w<cr>", "Save" },
    x = { ":bdelete<cr>", "Close" },
  },

  s = {
    name = 'Telescope',
    f = { ":Telescope find_files<cr>", "Find Files" },
    g = { ":Telescope oldfiles<cr>", "Recently Opened" },
  },
  t = {
    name = "Terminal",
    t = { ":ToggleTerm<cr>", "Split Below" },
  },
  p = {
    name = "Package",
    l = { ":Lazy<cr>", "Open Lazy" },
    m = { ":Mason<cr>", "Open Mason" },
  },
  d = {
    name = "Debug",
	a = {":<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint"},
    b = {":<cmd>lua require'dap'.continue<cr>", "Continue"},
	c = {":<cmd>lua require'dap'.step_into<cr>", "step_into"},
	d = {":<cmd>lua require'dap'.step_over<cr>", "step_over"},
	e = {":<cmd>lua require'dap'.step_out<cr>",  "step_out"},
	f = {":<cmd>lua require'dap'.repl.toggle<cr>", "repl toggle"},
    g = {":<cmd>lua require'dap'.run_last<cr>", "run_last"},
	h = {":<cmd>lua require'dapui'.toggle<cr>", "toggle"},
	i = {":<cmd>lua require'dap'.terminate<cr>", "terminate"},
  },
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)