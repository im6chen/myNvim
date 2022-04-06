return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- startify 
    use 'mhinz/vim-startify'

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- lspconfig
    use {
        'neovim/nvim-lspconfig', 
        'williamboman/nvim-lsp-installer',
    }

    -- dashboard-nvim
    -- use {'glepnir/dashboard-nvim'}

    -- tagbar
    use {'majutsushi/tagbar'}


    -- telescope  模糊搜索插件
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            "kyazdani42/nvim-web-devicons"
        }
    }
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}


    -- vim-go
    use 'fatih/vim-go'


    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'



    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
        require('Comment').setup()
    end
    }
end)
