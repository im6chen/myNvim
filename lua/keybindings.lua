-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader =  ' '

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

map("i", "jj", "<Esc>", opt)

--startify
map("n", "<leader>h", ":Startify<CR>", opt)


-- sv 水平分屏
-- sh 垂直分屏
-- sc 关闭当前分屏 (c = close)
-- so 关闭其他分屏 (o = other)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

-- alt + hjkl 在窗口之间跳转
-- map("n", "<A-h>", "<C-w>h", opt)
-- map("n", "<A-j>", "<C-w>j", opt)
-- map("n", "<A-k>", "<C-w>k", opt)
-- map("n", "<A-l>", "<C-w>l", opt)
-- 水平分屏很常用，比如 svgd 命令相当于 打开右侧窗口进入方法的定义，看完可以随手 sc 关闭掉。





--插件快捷键

-- Telescope
-- map("n", "<C-p>", ":Telescope find_files<CR>", opt)
--
-- map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
-- map("n", "<leader>fg", ":Telescope live_grep<CR>", opt)
-- map("n", "<leader>fb", ":Telescope buffer<CR>", opt)
-- map("n", "<leader>fh", ":Telescope help_tags<CR>", opt)

-- nvimTree
map('n', '<F2>', ':NvimTreeToggle<CR>', opt)
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右切换
-- map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
-- map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)


pluginKeys = {}

-- 代码注释插件
-- see ./lua/plugin-config/comment.lua
-- pluginKeys.Comment = {
--   -- normal 模式
--   toggler = {
--     line = '<leader>c',
--     block = '<leader>bc',
--   },
--   -- visual 模式
--   opleader = {
--     -- ctrl + /
--     line = '<C-_>',
--     block = 'bc',
--   },
-- }

-- lsp 快捷键设置
-- ./lua/lsp/language_servers.lua
-- pluginKeys.lsp_on_attach = function(client, buffer)
--     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--     --- Mappings.
--     local opts = { noremap=true, silent=true }
--     buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     buf_set_keymap('n', 'ge' , '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--     buf_set_keymap('n', 'gpe', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--     buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
--     buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- end

return pluginKeys




-- nvim-cmp 自动补全
-- pluginKeys.cmp = function(cmp)
--   return {
--     -- 上一个
--     ['<C-k>'] = cmp.mapping.select_prev_item(),
--     -- 下一个
--     ['<C-j>'] = cmp.mapping.select_next_item(),
--     -- 出现补全
--     --    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
--     -- 取消
--     -- ['<A-,>'] = cmp.mapping({
--     --   i = cmp.mapping.abort(),
--     --   c = cmp.mapping.close(),
--     -- }),
--     -- 确认
--     -- Accept currently selected item. If none selected, `select` first item.
--     -- Set `select` to `false` to only confirm explicitly selected items.
--     ['<CR>'] = cmp.mapping.confirm({
--       select = true ,
--       behavior = cmp.ConfirmBehavior.Replace
--     }),
--     -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
--     ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
--     ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
--   }
-- end
