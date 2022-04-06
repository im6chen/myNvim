local cmp = require'cmp'
cmp.setup {
    -- 必须指定 snippet 组件
    snippet = {
        expand = function(args) vim.fn['vsnip#anonymous'](args.body) end,
    },
    -- 配置补全内容来源
    sources = cmp.config.sources {
    -- 支持从打开的文件中补全内容
        { name = 'buffer', options = { get_bufnrs = vim.api.nvim_list_bufs } },
	-- 支持从 lsp 服务补全
        { name = 'nvim_lsp' },
	-- 支持补全文件路径，可以输入 / 或者 ~ 体验
        { name = 'path' },
    },


    mapping = {
    -- ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    -- ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    -- ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-b>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-f>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
    }),
    ['<Tab>'] = function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        else
            fallback()
        end
    end,
    ['<S-Tab>'] = function(fallback)
        if cmp.visible() then cmp.select_prev_item()
        else fallback() end
    end,
    },

}

-- 这里管补全
-- 将 cmp-lsp 跟 lsp 服务关联起来
-- 需要更新一上之前的 gopls 配置
--   local capabilities = vim.lsp.protocol.make_client_capabilities()
--   capabilities = require'cmp_nvim_lsp'.update_capabilities(capabilities)
--   local servers = { 'pyright', 'gopls' }
--   for _, lsp in pairs(servers) do
--     require('lspconfig')[lsp].setup {
--       on_attach = on_attach,
--       flags = {
--         -- This will be the default in neovim 0.7+
--         debounce_text_changes = 150,
--       }
--     }
--   end

-- require'lspconfig'.gopls.setup {
--     on_attach = on_attach,
--     flags = {
--         debounce_text_changes = 150,
--     },
-- }
