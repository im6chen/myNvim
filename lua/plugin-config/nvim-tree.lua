require'nvim-tree'.setup {
    -- 关闭文件时自动关闭
    -- auto_close = true,
    -- 不显示 git 状态图标
    git = {
        enable = false
    }
}

-- 快捷键	操作
-- 回车键/o(两者作用相同)	打开文件/目录
-- Ctrl - ]	切换到光标所在目录
-- a	新建文件
-- r	重命名文件
-- x	剪切文件
-- c	复制文件
-- p	粘贴文件
-- d	删除文件
-- H	是否显示隐藏文件
-- Tab	预览文件
-- Ctrk-v	垂直拆分中打开文件
-- Ctrl-x	水平拆分中打开文件




-- vim.g.nvim_tree_indent_markers = 1
-- vim.g.nvim_tree_allow_resize = 1
-- vim.g.nvim_tree_icons = {
--   default = "",
--   symlink = ""
-- }
-- vim.g.nvim_tree_show_icons = {
--   git = 0,
--   folders = 1,
--   files = 1
-- }
-- --vim.g.nvim_tree_gitignore = 0
-- vim.g.nvim_tree_git_gl = 0
-- 
-- local tree_cb = require("nvim-tree.config").nvim_tree_callback
-- require("nvim-tree").setup {
-- --  auto_close = true,
--   update_focused_file = {
--     update_cwd = true
--   },
--   view = {
--     mappings = {
--       list = {
--         {key = "l", cb = tree_cb("edit")}
--       }
--     }
--   }
-- }
