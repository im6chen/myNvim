set nocompatible

call plug#begin()
" -----------------------------------------------
"  startify
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   近期文件']            },
      \ { 'type': 'dir',       'header': ['   近期文件 '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   会话窗口']       },
      \ { 'type': 'bookmarks', 'header': ['   书签']      },
      \ { 'type': 'commands',  'header': ['   命令']       },
      \ ]
let g:startify_bookmarks = [ {'c': '~/.config/nvim/'}, {'g': '~/go/src/'}, '~/.zshrc' ]
let g:startify_commands = [
    \ ':help reference',
    \ ['Vim Reference', 'h ref'],
    \ {'h': 'h ref'},
    \ {'m': ['My magical function', 'call Magic()']},
    \ ]
let g:startify_files_number = 5
let g:startify_session_autoload = 1
let g:startify_custom_header = [
   \' ╭─────────────────────────────────────────────╮',
   \' │                                             │ ',
   \' │  ██████╗  ██████╗██╗  ██╗███████╗███╗   ██╗ │ ',
   \' │ ██╔════╝ ██╔════╝██║  ██║██╔════╝████╗  ██║ │ ',
   \' │ ███████╗ ██║     ███████║█████╗  ██╔██╗ ██║ │ ',
   \' │ ██╔═══██╗██║     ██╔══██║██╔══╝  ██║╚██╗██║ │ ',
   \' │ ╚██████╔╝╚██████╗██║  ██║███████╗██║ ╚████║ │ ',
   \' │  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ │ ',
   \' │                                   --liuchen.│ ',
   \' ╰─────────────────────────────────────────────╯ ',
   \]
" -----------------------------------------------
" 配色方案
" 真彩
set termguicolors

"colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
"To use your default terminal background:
let g:neodark#terminal_transparent = 0 " default: 0
"If you want solid vertical split matching the statusline:
let g:neodark#solid_vertsplit = 1 " default: 0
"To use italics:
"let g:neodark#italics = 1 " default: 0

colorscheme neodark


" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline_left_alt_sep=''
  let g:airline_right_alt_sep=''
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#fnametruncate = 16
" let g:airline#extensions#tabline#fnamecollapse = 2
" let g:airline#extensions#tabline#buffer_idx_mode = 1

Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme="powerlineish"
let g:airline_theme="neodark"

"图标插件 Always load the vim-devicons as the very last one.
"Plug 'ryanoasis/vim-devicons'
" ========= programming tools here. ==========
" lsp server
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
" Plug 'onsails/lspkind-nvim'
" Plug 'tami5/lspsaga.nvim'
" -----------------------------------------------
" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" -----------------------------------------------
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"可以快速对齐的插件
"Plug 'junegunn/vim-easy-align'
" -----------------------------------------------
"Plug 'voldikss/vim-floaterm'
" -----------------------------------------------
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" Plug 'glepnir/dashboard-nvim'
" let g:dashboard_default_executive ='telescope'
" -----------------------------------------------
" Plug 'voldikss/vim-floaterm'
"Plug 'akinsho/toggleterm.nvim'
" " toggleterm settings 
" autocmd TermEnter term://*toggleterm#*
"             \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
" " By applying the mappings this way you can pass a count to your
" " mapping to open a specific window.
" " For example: 2<C-t> will open terminal 2
" nnoremap <silent><leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>
" inoremap <silent><leader>tt <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
" nnoremap <silent><leader>gg <Cmd>lua _LAZYGIT_TOGGLE()<CR>
" -----------------------------------------------
" NERDTree 用来提供一个导航目录的侧边栏
"Plug 'scrooloose/nerdtree'
" 可以使 nerdtree 的 tab 更加友好些
"Plug 'jistr/vim-nerdtree-tabs'
" 可以在导航目录中看到 git 版本信息
"Plug 'Xuyuanp/nerdtree-git-plugin'
"修改树的显示图标
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
"窗口位置
"let g:NERDTreeWinPos='left'
"窗口尺寸
"let g:NERDTreeSize=30
"窗口是否显示行号
"let g:NERDTreeShowLineNumbers=1
"不显示隐藏文件
"let g:NERDTreeHidden=0
"打开vim时如果没有文件自动打开NERDTree
"autocmd vimenter * if !argc()|NERDTree|
"打开vim时自动打开NERDTree
"autocmd vimenter * NERDTree
"当NERDTree为剩下的唯一窗口时自动关闭
"autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" -----------------------------------------------
" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
" Plug 'majutsushi/tagbar'
" nnoremap <F3> :Tagbar<CR>

" -----------------------------------------------

" 自动补全括号的插件，包括小括号，中括号，以及花括号
"Plug 'jiangmiao/auto-pairs'

" -----------------------------------------------


" 代码自动完成，安装完插件还需要额外配置才可以使用
"Plug 'Valloric/YouCompleteMe'

" -----------------------------------------------

" 可以在文档中显示 git 信息
"Plug 'airblade/vim-gitgutter'

" -----------------------------------------------

" 下面两个插件要配合使用，可以自动生成代码块
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" -----------------------------------------------

" 可以在 vim 中使用 tab 补全
"Plug 'vim-scripts/SuperTab'

" -----------------------------------------------

" 可以在 vim 中自动完成
"Plug 'Shougo/neocomplete.vim'


" go 主要插件
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" go 中的代码追踪，输入 gd 就可以自动跳转
" Plug 'dgryski/vim-godef'
" let g:godef_split=2

" -----------------------------------------------

" markdown 插件
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'

" -----------------------------------------------
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
" -----------------------------------------------

call plug#end()






"---------------------------------------------------------------------------
"map配置
"---------------------------------------------------------------------------
"let mapleader = ','
"set ts=4
"set expandtab
imap <C-j>     <Plug>(neosnippet_expand_or_jump)
smap <C-j>     <Plug>(neosnippet_expand_or_jump)
xmap <C-j>     <Plug>(neosnippet_expand_target)

" tab标签切换
"noremap <tab>m :tabnew<cr>
"noremap <tab>e :tabclose<cr>
"noremap <tab>n :tabn<cr>
"noremap <tab>p :tabp<cr>
"noremap <leader>t :tabnew<cr>
"noremap <leader>g :tabclose<cr>
"noremap <leader>1 :tabn 1<cr>
"noremap <leader>2 :tabn 2<cr>
"noremap <leader>3 :tabn 3<cr>
"noremap <leader>4 :tabn 4<cr>
"noremap <leader>5 :tabn 5<cr>
"noremap <leader>6 :tabn 6<cr>
"noremap <leader>7 :tabn 7<cr>
"noremap <leader>8 :tabn 8<cr>
"noremap <leader>9 :tabn 9<cr>
"noremap <leader>0 :tabn 10<cr>
"noremap <s-tab> :tabnext<CR>
"inoremap <silent><s-tab> <ESC>:tabnext<CR>

"inoremap jj <Esc>
" command mode, ctrl-a to head， ctrl-e to tail
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 插入模式上下左右
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" 括号自动补全
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap < <><ESC>i

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"分屏切换
"map <leader>i :set splitright<CR>:vsplit<CR>
"map <leader>n :set nosplitright<CR>:vsplit<CR>
"map <leader>u :set nosplitbelow<CR>:split<CR>
"map <leader>t :set splitbelow<CR>:term<CR>

"←↑↓→缩放窗口
map <S-up> :res +5<CR>
map <S-down> :res -5<CR>
map <S-left> :vertical resize-5<CR>
map <S-right> :vertical resize+5<CR>

" Quickly close the current window
" nnoremap <leader>q :q<CR>
" Quickly save the current file
" nnoremap <leader>w :w<CR>

"Reselect visual block after indent/outdent.调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv













"---------------------------------------------------------------------------
"vim基础配置
"---------------------------------------------------------------------------
"set encoding=UTF-8
"set number
"set mouse=a

"高亮搜索
"set hlsearch

"高亮输入中的搜索
"set incsearch

"在合适的位置换行
"set linebreak

"高亮光标所在行和列
"set cursorline
"set cursorcolumn

"页面滚动
"set scrolloff=7

"模式标签重复显示
"set noshowmode

"缩进设置
"set tabstop=4           " Tab 缩进为4
"set shiftwidth=4        " >> 或 << 缩进长度为 4

"退格键模式
"set backspace=indent,eol,start











"---------------------------------------------------------------------------
"Quickly Run
"---------------------------------------------------------------------------
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc



" ============================== External Lua settings =============================
" 基础设置 
lua require('basic')
" 按键映射 
lua require('keybindings')
" packer插件管理
lua require('plugins')
"" -- Regenerate compiled loader file
"" :PackerCompile
"" 
"" -- Remove any disabled or unused plugins
"" :PackerClean
"" 
"" -- Clean, then install missing plugins
"" :PackerInstall
"" 
"" -- Clean, then update and install plugins
"" :PackerUpdate
"" 
"" -- Perform `PackerUpdate` and then `PackerCompile`
"" :PackerSync
"" 
"" -- Loads opt plugin immediately
"" :PackerLoad completion-nvim ale
" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/telescope')

" 内置LSP
lua require('lsp/setup')
lua require('lsp/nvim-cmp')
lua require('lsp/nvim-lspconfig')

" ============================== END External Lua settings =========================

"let mapleader='\<Space>'
