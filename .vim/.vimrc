""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"快捷键说明
"map <leader>
" <leader>yd: 有道词典,输入单词进行翻译
"
"
"F1 ->帮助
"F2 ->
"F3 ->GundoToggle插件，        
"F4 ->IndentGuidesToggle插件， 在普通模式下，可以高亮缩进的显示
"F5 ->TagbarToggle插件，       也就是taglist的替代品
"F6 ->NERDTreeToggle插件，     左边打开当前目录树
"F7 ->Gist插件，               
"F8 ->
"F9 ->
"F10 ->MarksBrowser插件，      
"F11 ->
"F12 ->在虚拟模式下，使用F12来切换是用鼠标模式，还是终端模式
" ========================================================================
"此处后面都是vundle的使用命令
"BundleList            -列举列表(也就是.vimrc)中配置的所有插件  
"BundleInstall         -安装列表中的全部插件  
"BundleInstall!        -更新列表中的全部插件  
"BundleSearch foo      -查找foo插件  
"BundleSearch! foo     -刷新foo插件缓存  
"BundleClean           -清除列表中没有的插件  
"BundleClean!          -清除列表中没有的插件  
" ========================================================================
"后面是mark.vim插件，用于光标位置的变量高亮显示，插件安装在.vim/plugin目录下
"/m      标记、取消标记当前光标选中的单词
"/r      用于正则表达式，快捷键被我修改为/b
"/n      清除所有的标记
"/*      把光标向前切换到当前被Mark的MarkWords中的下一个MarkWord.
"/#      把光标向后切换到当前被Mark的MarkWords中的上一个MarkWord.
"//      把光标向前切换到所有被Mark的MarkWords中的下一个MarkWord.
"/?      把光标向后切换到所有被Mark的MarkWords中的上一个MarkWord.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"映射 引导键
let mapleader = ","

"Bundle插件脚本
source ~/.vim/bundles.vim


" 设置文件编码
" encoding dectection
set fileencoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on


"------------------------------------------------------------------------------------------------------------------------------------------------------
" 这个是neocomplete的初始化
"must be executed before session load
execute neocomplete#initialize()




"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" Vim 的基本配置
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
" color scheme
set background=dark

"color vividchalk
color molokai
let g:molokai_original = 0
"colorscheme solarized

" For showmarks plugin
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


" search
set incsearch
set ignorecase    "搜索忽略大小写
set smartcase
set hlsearch      "搜索高亮显示

" editor settings
set history=1000
set nocompatible                                                  " 取消一致性检查
set nofoldenable                                                  " disable folding 禁止折叠 "
set confirm                                                       " prompt when existing from an unsaved file  在处理未保存或只读文件的时候，弹出确认
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
"set mouse=v                                                       " 在可视模式下支持鼠标模式
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling  光标移动到buffer的顶部和底部时保持5行距离
set number                                                        " show line numbers 显示行号
set showmatch                                                     " show matching bracket (briefly jump)   高亮匹配显示的括号
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds   匹配括号高亮的时间
set matchpairs+=<:>                                               " specially for html
set clipboard=unnamed                                             " yank and paste with the system clipboard
set hidden
set shortmess=atI                                                 " 启动的时候不显示那个援助乌干达儿童的提示  
set guioptions-=T                                                 " 隐藏工具栏
set guioptions-=m                                                 " 隐藏菜单栏
" 去掉输入错误的提示声音
set noeb
set vb t_vb=
set vb                                                            " 代替 bell 的将是屏幕的闪烁

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" Default Indentation
set autoindent      " 自动缩进
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set expandtab       " expand tab to space tab键用空格代替


autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,tpl setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

" syntax support
"autocmd Syntax javascript set syntax=jquery   " JQuery syntax support

"tpl support
au BufNewFile,BufRead *.tpl set ft=html
"au FileType javascript call JavaScriptFold()
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" highlight tabs and trailing spaces
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<




"-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
" Plugin settings
"-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
"
"Indent-Guides插件
"默认开启
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4



"-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
"syntastic
"let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers=['jshint']

" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

"dash
:nmap <silent> <leader>z <Plug>DashSearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags
set tags=tags;
set autochdir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>x :MRU<CR>

"tabbar
"let g:Tb_MaxSize = 2
"let g:Tb_TabWrap = 1
"
"hi Tb_Normal guifg=white ctermfg=white
"hi Tb_Changed guifg=green ctermfg=green
"hi Tb_VisibleNormal ctermbg=252 ctermfg=235
"hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" showmarks setting
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1
nmap <F10> :MarksBrowser<cr>

"yankring
nnoremap <leader>q :YRShow<CR>
let g:yankring_replace_n_pkey = 'π'
let g:yankring_replace_n_nkey = '˜'
let g:yankring_history_dir = '~/.vim/temp_dirs/'


" easy-motion
" let g:EasyMotion_leader_key = '<Leader>'
" nmap <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion"
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout"
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1

" Tagbar
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree
" 目录树插件 介绍：http://williamherry.com/blog/2012/07/19/master-vim-02-nerdtree/
" :NERDTree 命令来打开此插件，打开后显示在VIM的左边
" 目前定义为F3快捷键打开此插件
" 在此插件里使用的快捷键：
" o 打开关闭文件或者目录 
" t 在标签页中打开
" T 在后台标签页中打开
" ! 执行此文件
" p 到上层目录
" P 到根目录
" K 到第一个节点
" J 到最后一个节点
" u 打开上层目录
" m 显示文件系统菜单（添加、删除、移动操作）
" ? 帮助 q 关闭
"********************************************************
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=30       "窗口宽度
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"  "窗口位置

let NERDTreeShowLineNumbers=1   "显示行号
let NERDTreeShowHidden=1        "显示隐藏文件
let NERDTreeMinimalUI=1         "不显示'Bookmarks' label 'Press ? for help'  不显示帮助面板
"let NERDTreeQuitOnOpen=1       "打开文件后自动关闭


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1
"nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gitgutter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" grep.vim 搜索插件的配置
" 输入:Grep  搜索本文件
" 输入:Rgrep 搜索目录下的所有文件
":Grep   	按照指定的规则在指定的文件中查找
":Rgrep	  同上, 但是是递归的grep
":GrepBuffer	在所有打开的缓冲区中查找
":Bgrep	      同上
":GrepArgs	在vim的argument filenames (:args)中查找
":Fgrep	    运行fgrep
":Rfgrep	  运行递归的fgrep
":Egrep	    运行egrep
":Regrep	  运行递归的egrep
":Agrep	    运行agrep
":Ragrep	  运行递归的agrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Grep_Default_Filelist = '*.h *.hp *.hpp *.hxx *.cpp *.ipp *.cxx *.cp *.cc *.c *.java *.s'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ZenCoding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_zen_expandabbr_key='<C-j>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Powerline_symbols = 'fancy'
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"zenroom goyo
nnoremap <silent> <leader>d :Goyo<cr>
let g:goyo_margin_top=1
let g:goyo_margin_bottom=1


" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" youdao translate  有道插件
" Ctrl+T      翻译当前光标下的单词
" 引导键+yd   输入单词进行翻译
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> <C-T> <Esc>:Ydv<CR>
nnoremap <silent> <C-T> <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable omni completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabRetainCompletionType=2


"auto session let g:session_autoload = 'yes'
" auto load session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"js format
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer>  <c-s> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-s> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-s> :call CSSBeautify()<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'

let g:ctrlp_use_caching=0     "是否要使用cache，不使用第一次打开会很慢
let g:ctrlp_show_hidden=1     "如果你想CtrlP扫描隐藏文件和目录，设置该选项为1:
let g:ctrlp_max_depth = 100   "扫描目录深度
let g:ctrlp_max_files = 0     "扫描文件最大数量
let g:ctrlp_mruf_max = 0      "指定希望CtrlP记录的最近打开的文件历史的数目

"===========================================
"WinManager setting
"===========================================
let g:winManagerWindowLayout='BufExplorer|FileExplorer'
let g:winManagerWidth = 25
let g:persistentBehaviour = 1
let g:bufExplorerMaxHeight = 10
autocmd BufEnter * silent! lcd %:p:h "use current file dir
nmap wm :WMToggle<cr> 
nmap <tab>j <C-w>j
nmap <tab>h <C-w>h
nmap <tab>k <C-w>k
nmap <tab>l <C-w>l




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags配置文件
"map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
"imap <F8> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cscope配置文件
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
  set cscopetag 
  " 添加快捷键更新 cscope 数据库
  "nmap <F12> :!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.java" > cscope.files && cscope -Rbqi cscope.files<CR>
endif

"ctrl+@ 后,按下s
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>    "查找C语言符号，即查找函数名、宏、枚举值等出现的地方
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>    "查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>    "查找调用本函数的函数
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>    "查找指定的字符串
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>    "查找egrep模式，相当于egrep功能，但查找速度快多了
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>    "查找并打开文件，类似vim的find功能
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  "查找包含本文件的文件列表
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>    "查找本函数调用的函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"输入,.后，就可以查找当前光标的字符，并且以列表的形式显示出来
:nmap <Leader>. :exec 'lvimgrep /' . input('/', expand('<cword>')) . '/j % <bar> lopen'<CR> 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"taglist配置文件
let Tlist_Show_One_File = 1         "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Auto_Highlight_Tag = 1       "自动高亮标签

"let Tlist_Ctags_Cmd='/opt/local/bin/ctags'  "设置ctags命令的位置
"nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"nmap <F8> :TlistToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" other keybindings for plugin toggle
" 其他快捷键绑定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
map <F7> :Gist
"nmap  <D-/> :
nnoremap <leader>a :CtrlSF 
nnoremap <leader>v V`]
nnoremap <leader>i :FixWhitespace<cr>
nnoremap <leader>r :Unite register<cr>





"------------------------------------------------------------------------------------------------------------------------------------------------------------------------
" Useful Functions
"------------------------------------------------------------------------------------------------------------------------------------------------------------------------

" Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

" paste without replace
xnoremap p pgvy

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
endif


"Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"for long line move
map j gj
map k gk

"Open vimgrep and put the cursor in the right position:
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

"Vimgreps in the current file:
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

"Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

"use ag instead of ack, should install the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'


"When you press gv you vimgrep after the selected text:
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

"Visual mode pressing * or # searches for the current selection:
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>


function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null % 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

"--------------------------------------------------------------------------------------------------------------------------------------------------------------
"for macvim
"--------------------------------------------------------------------------------------------------------------------------------------------------------------
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Source\ Code\ Pro\ for\ Powerline:h13
    set showtabline=2 " always show tabs in gvim, but not vim
    set columns=140
    set lines=40
    noremap <C-Tab> :tabnext<CR>
    noremap <C-S-Tab> :tabprev<CR>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建文件，自动插入文件头 

"python 文件
autocmd BufNewFile *.py call setline(1,'#!/usr/bin/env python') |
\ call setline(2,'') |
\ call setline(3,'#coding:utf-8') |
\ call setline(4,'') |
\ call setline(5,'') |
\ exe "normal G"
augroup END 

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1, "\#!/bin/sh") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ") 
        call append(line(".")+2, "    > Mail:  ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 


"*****************************************************
"禁止生成.viminfo文件  要放在最后一行
set viminfo=
