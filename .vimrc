"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 个人设置，personal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效
set signcolumn=yes    "强制显示侧边栏

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","           " 定义<leader>键
set clipboard=unnamed         " 共享系统剪切板
set nocompatible              " 设置不兼容原始vi模式
filetype on                   " 设置开启文件类型侦测
filetype plugin on            " 设置加载对应文件类型的插件
set noeb                      " 关闭错误的提示
syntax enable                 " 开启语法高亮功能
syntax on                     " 自动语法高亮
set t_Co=256                  " 开启256色支持
set cmdheight=4               " 设置命令行的高度
set showcmd                   " select模式下显示选中的行数
set ruler                     " 总是显示光标位置
set laststatus=2              " 总是显示状态栏
set number                    " 开启行号显示
set noshowmode                " 不显示输入模式
"set cursorcolumn              " 高亮列
"set cursorline                " 高亮显示当前行
"set whichwrap+=<,>,h,l        " 设置光标键跨行
set ttimeoutlen=0             " 设置<ESC>键响应时间
set virtualedit=block,onemore " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent              " 设置自动缩进
set cindent                 " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0 " 设置C/C++语言的具体缩进方式
set smartindent             " 智能的选择对其方式
filetype indent on          " 自适应不同语言的智能缩进
set expandtab               " 将制表符扩展为空格
set tabstop=2               " 设置编辑时制表符占用空格数
set shiftwidth=2            " 设置格式化时制表符占用空格数
set softtabstop=2           " 设置4个空格为制表符
set smarttab                " 在行和段开始处使用制表符
set nowrap                  " 禁止折行
set backspace=2             " 使用回车键正常处理indent,eol,start等
set sidescroll=10           " 设置向右滚动字符数
set fdm=syntax              " 设置代码折叠

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"快捷键shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap LB 0	
nmap LE $
vnoremap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nmap <Leader>M %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件安装LINX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
""""""""""文件列表,目录树""""""""""
Plug 'scrooloose/nerdtree',             { 'on':'NERDTreeToggle'}              
""""""""""索引""""""""""
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
""""""""""后台运行""""""""""
Plug 'skywind3000/asyncrun.vim'
""""""""""动态检查""""""""""
Plug 'w0rp/ale'
""""""""""高亮""""""""""
Plug 'octol/vim-cpp-enhanced-highlight'
""""""""""修改比较""""""""""
Plug 'mhinz/vim-signify'
""""""""""自动补全""""""""""
Plug 'Valloric/YouCompleteMe'
""""""""""神器，函数，列表""""""""""
Plug 'Yggdroot/LeaderF'
""""""""" 参数提示""""""""""
Plug 'Shougo/echodoc.vim'
""""""""""状态栏""""""""""
Plug 'vim-airline/vim-airline'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件树设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <silent> <leader>n :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"配置tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动载入ctags gtags
if version >= 800
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'skywind3000/gutentags_plus'

    let $GTAGSLABEL = 'native-pygments'
    let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'

    " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
    let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

    " 所生成的数据文件的名称
    let g:gutentags_ctags_tagfile = '.tags'

    " 同时开启 ctags 和 gtags 支持：
    let g:gutentags_modules = []
    if executable('ctags')
        let g:gutentags_modules += ['ctags']
    endif
    if executable('gtags-cscope') && executable('gtags')
        let g:gutentags_modules += ['gtags_cscope']
    endif

    " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
    let g:gutentags_cache_dir = expand('~/.cache/tags')

    " 配置 ctags 的参数
    let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
    let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
    let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

    " 如果使用 universal ctags 需要增加下面一行
    let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

    " 禁用 gutentags 自动加载 gtags 数据库的行为
    " 避免多个项目数据库相互干扰
    " 使用plus插件解决问题
    let g:gutentags_auto_add_gtags_cscope = 0

    "预览 quickfix 窗口 ctrl-w z 关闭
    Plug 'skywind3000/vim-preview'
    "P 预览 大p关闭
    autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
    autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
    noremap <Leader>u :PreviewScroll -1<cr> " 往上滚动预览窗口
    noremap <leader>d :PreviewScroll +1<cr> "  往下滚动预览窗口
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"配置终端asynrun
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6
" 任务结束时候响铃提醒
"let g:asyncrun_bell = 1
" 设置  打开/关闭 Quickfix 窗口,rq means run quickfix
nnoremap rq :call asyncrun#quickfix_toggle(6)<cr>
" 编译单个文件,cs means compiler single
" nnoremap <silent>cs :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
nnoremap <silent>cs :AsyncRun g++ -std=c++14 -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"  "$(VIM_FILEPATH)"<cr>
" 运行，rs means run single
nnoremap <silent>rs :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
" 定义项目标志
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']
" 编译整个项目，cf means compiler full project
"nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>
nnoremap <silent>cf :AsyncRun -cwd=<root> make <cr>
" 清理整个项目，ml means make clean
nnoremap <silent>ml :AsyncRun -cwd=<root> make clean <cr>
"运行整个项目，需要makefile中有make run规则
"nnoremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>
"测试整个项目，需要makefile中有make test规则
"nnoremap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"语法检查，动态检查ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动补全,YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menu,menuone "关闭自动弹出的函数说明窗口
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-y>'
noremap <c-y> <NOP>
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,go': ['re!\w{2}'],
			\ 'lua': ['re!\w{2}'],
			\ }
let g:ycm_global_ycm_extra_conf= '~/.vim/plugged/YouCompleteMe/cpp/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 "导入工程自己的conf时提示确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fn :LeaderfFunction<cr>
nnoremap <leader>fl :LeaderfLineAll<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline状态栏
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_section_b = '%{strftime("%m/%d/%Y - %H:%M")}'
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" echodoc.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:echodoc_enable_at_startup = 1
