
-------[configuration]---------

local Setting = {
--"界面设置"
    mouse = "a", -- 鼠标支持
    number = true, --行号
   -- relativenumber = true, --设置相对行号
    cursorline = true, -- 高亮所在行
    signcolumn = "yes", --显示左侧图标指示列
    ruler = true, -- 显示当前光标
    showcmd = true, -- 在窗口右下角显示命令
    cmdheight = 0, -- cmd 命令区域高度
    --modelines = 0,
    showmode = false, -- 使用状态栏插件后不再需要 vim 的模式提示
    --vim.o.hidden = true

    -- split window 从下边和右边出现
    --splitbelow = true,
    splitright = true,

    termguicolors = true, --终端颜色开启

--"编辑"
    wildmenu = true, -- -- 补全增强
    --vim.g.completeopt = "menu,menuone,noselect,noinsert"  -- 自动补全不自动选中
    completeopt = { 'menu', 'menuone', 'noselect' },
    clipboard = "unnamedplus", -- 剪贴板(access => syssystem clipboard)
    -- utf8
    encoding = "UTF-8",
    fileencoding = 'utf-8',

    --colorcolumn = "80", -- 代码长度限制提示参考线

    whichwrap = 'b,s,<,>,[,],h,l', ---- 行结尾可以跳到下一行

    history = 50, -- 历史记录大小

    -- 禁止创建备份文件
    backup = false,
    writebackup = false,
    swapfile = false,

    -- 当文件被外部程序修改时，自动加载
    autoread = true,

    -- 禁止折行
    wrap = false,

    shiftwidth = 4, -- 移动宽度
    softtabstop = 4, -- tab缩进长度为4
    ts = 4,
    autoindent = true, --自动缩进
    -- 新行对齐当前行，空格替代tab
    expandtab = true,
    smartindent = true,
    -- 搜索大小写不敏感，除非包含大写
    ignorecase = true,
    smartcase = true,

    incsearch = true ,--边输入边搜索
    hlsearch = true ,-- 搜索高亮

-- bar
    linespace = 0, -- 行间距
    laststatus = 3,
    showtabline = 1, -- 打开tabline
 }

for k, v in pairs(Setting) do
	vim.opt[k] = v
end


