--[[

  █▀▀ █░█ █▀▀ ▄▀█ ▀█▀ █▀ █░█ █▀▀ █▀▀ ▀█▀
  █▄▄ █▀█ ██▄ █▀█ ░█░ ▄█ █▀█ ██▄ ██▄ ░█░

--]]


vim.g.mapleader = "." -- 全局快捷键前缀

local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

map('n', '<C-r>' ,':source $MYVIMRC<CR>', opts)

-- #分屏
map('n', '<space>v', ':vs<CR>', opts)
map('n', '<space>s', ':sp<CR>', opts)

-- #保存
map('n', '<C-s>', ':w<CR>', opts)

-- #退出
map('n', '<C-q>', ':q<CR>', opts)

-- #关闭
map('n', 'C-c', ':close<CR>', opts)

-- #窗口切换
map("n", "<space>h", "<C-w>h", opts)
map("n", "<space>j", "<C-w>j", opts)
map("n", "<space>k", "<C-w>k", opts)
map("n", "<space>l", "<C-w>l", opts)


-- #窗口大小更改
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- 清除搜索高亮
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- 关闭缓冲文件
map("n", "<S-q>", "<cmd>bd!<CR>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
map("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- telescope
map('n', '<space>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map('n', '<space>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
map('n', '<space>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
-- map('n', '<space>fh',"<cmd>require('telescope.builtin').help_tags<CR>", opts)
map('n', '<space>fc', "<cmd>lua require('telescope.builtin').colorscheme()<CR>", opts)
map('n', '<space>fm', "<cmd>lua require('telescope.builtin').keymaps()<CR>", opts)
-- map('n', '<space>fp', "<cmd>require('telescope.builtin').man_pages<CR>", opts)
-- map('n', '<space>ft', "<cmd>require('telescope.builtin').filetypes<CR>", opts)
-- map('n', '<space>fd', "<cmd>require('telescope.builtin').commands<CR>", opts)
map('n', '<space>fj', "<cmd>lua require('telescope.builtin').jumplist()<CR>", opts)


-- lazy
map("n", "<leader>i", ":Lazy<CR>", opts)

-- mason
map("n","<leader>m", ":Mason<CR>", opts)


-- nvim tree
map("n","<leader>f",":NvimTreeToggle<CR>",opts)

-- lsp
map('n', 'ld',        "<cmd>vim.lsp.buf.definition",  opts)
map('n', 'lh',        "<cmd>vim.lsp.buf.hover",       opts)
map('n', '<space>cr', "<cmd>vim.lsp.buf.rename" ,     opts)  --"Rename Symbol"
map('n', "<space>ca", "<cmd>vim.lsp.buf.code_action", opts)      -- "Code Action"

-- DAP
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>",          opts)
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>",         opts)
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>",         opts)
map("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>",          opts)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>",       opts)
map("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>",          opts)
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>",          opts)
map("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>",         opts)


