" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)


set nocompatible              " be iMproved, required
filetype on                  " required


"vim 中文乱码可以设置
"e ++enc=cp936 
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"代码根据 {} 自动折叠
"set foldmethod=indent
"or set fdm=indent 
"设置行号
set number
"设置相对行号
"set relativenumber
"设置tab缩进为4
set tabstop=4
"设置统一缩进为4
set softtabstop=4
set shiftwidth=4
"设置自动缩进
set autoindent
set cindent

"设置vim-colorschemes
set background=dark
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"快捷键

"NERDTree 配置:F2快捷键显示当前目录树

"sneak map
"map f <Plug>Sneak_f
"map F <Plug>Sneak_F
"map t <Plug>Sneak_t
"map T <Plug>Sneak_T

" 按f1可以查看括号的匹配
map <F1> <S-%>

map <F2> :NERDTreeToggle<CR>

"ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
map <F3> :TlistToggle<CR>

" map <F4> :browse oldfiles<CR>

"map <F5> <C-w>]
map <F6> <C-w>c

"" 只是查看函数被调用的地方，而不是字符串搜素
"map <F7> :call CS_Search_Word()<CR>
" 关闭弹出窗口
"map <F8> :cclose<CR>
map <C-]> :call Tags_Serach()<CR>
" 查看函数被调用的地方
map <F7> :call CS_Search_calledfunc()<CR>
" 查看函数定义
map <F8> :call CS_Search_whatfunc()<CR>


" 在项目级别查找单词所在的地方，并弹出窗口
map <F9> :call Search_Word()<CR>

"cs search word
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" find the define
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" find call what funcs 
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" find called func
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" find where file the func is
nmap <C-\>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>


" 取消JK 缩进一行
nmap J j

map <C-d> :Buffers<CR>
map <C-j> :bprevious<CR>
map <C-k> :bnext<CR>
map <C-e> :botright copen<CR>
map c<C-e> :cclose<CR>
" 映射后需勾选 secureCRT 会话选项里的 backspace 发送delete B
" Ctrl+h 插入模式向左移动光标
inoremap <C-h> <left>
" Ctrl+j 插入模式向下移动光标
inoremap <C-j> <down>
" Ctrl+h 插入模式向上移动光标
inoremap <C-k> <up>
" Ctrl+l 插入模式向右移动光标
inoremap <C-l> <right>





set nocp
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 " vim gruvbox 配色方案
Plugin 'morhetz/gruvbox'
" vim欢迎界面
"Plugin 'mhinz/vim-startify'

" 模糊搜索
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" coc.nvim
" Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" 中文帮助文档
"Plugin 'yianwillis/vimcdoc'

" 代码检查
"Plugin 'vim-syntastic/syntastic'
"高亮 \ +单词
Plugin 'Mark'
"tag bar
Plugin 'majutsushi/tagbar'
" 快速移动
Plugin 'justinmk/vim-sneak'
" 函数列表
Plugin 'taglist.vim'
" vim buffer 管理
Plugin 'bufexplorer.zip'
" 模糊查找文件
Plugin 'yggdroot/leaderf'
" 文件树
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
" 文件数图标
" 图标美化
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" 代码格式化美化
Plugin 'Chiel92/vim-autoformat'
" vim配色方案
Plugin 'flazz/vim-colorschemes'
" 通用代码注释
Plugin 'tpope/vim-commentary'
" usage
" gcc 注释所在行
" gc 注释选中部分 visual模式下
" gcu 撤销上一次注释
" gcgc 撤销注释当前行和临近的N行注释
Plugin 'junegunn/vim-easy-align'
" usage
" ea进入对齐模式
" 默认是左对齐
" 回车进入R模式是右对齐 right
" 再次回车进入C模式是居中对齐 Centered
" 紧接着输入对齐中间的字符，也就是分隔符
" 补全插件
"Plugin 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --all'}
"java 自动补全
Plugin 'javacomplete'
"Plugin 'valloric/youcompleteme'
" Plug '~/.vim/plugged/YouCompleteMe'
" bash插件 在vim中运行command
Plugin 'tpope/vim-pathogen'
" 符号编辑插件
Plugin 'tpope/vim-surround'
"" git管理器
"Plugin 'tpope/vim-fugitive'
" c++ stl高亮
Plugin 'octol/vim-cpp-enhanced-highlight'
" tab自动补全内容
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
" 对称括号加颜色
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-airline/vim-airline'
Plugin 'ludovicchabant/vim-gutentags'


call vundle#end()            " required
filetype plugin indent on    " required


"配色方案设置
"colorscheme gruvbox
colorscheme codedark
"colorscheme Atelier_CaveDark
" colorscheme badwolf

" 打开文件自动跳转到上一次的光标位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""NerdTree 目录自动跳转
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
" #关闭自动跳转
" autocmd BufEnter * call SyncTree()
 
function! ToggleNerdTree()
  set eventignore=BufEnter
  NERDTreeToggle
  set eventignore=
endfunction
nmap c<C-n> :call ToggleNerdTree()<CR>
nmap <C-n> :NERDTreeFind<CR>
nmap <C-g> :grep! -nr


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1, "#!/bin/bash") 
		call append(line("."), "##########################################################################") 
		call append(line(".")+1, "# File Name: ".expand("%")) 
		call append(line(".")+2, "# Author: Arctan") 
		call append(line(".")+3, "# Created Time: ".strftime("%c")) 
		call append(line(".")+4, "#########################################################################") 
	"	call append(line(".")+5, "#!/bin/zsh")
	"	call append(line(".")+6, "PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin")
	"	call append(line(".")+7, "export PATH")
		call append(line(".")+8, "")
	else 
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Author: Arctan") 
		call append(line(".")+2, "	> Created Time: ".strftime("%c")) 
		call append(line(".")+3, " ************************************************************************/") 
		call append(line(".")+4, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <iostream>")
    	call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc 


"fzf 预览窗口
let g:fzf_preview_window = []


"sneak#label
let g:sneak#label = 1

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0
" arctan add 

" 错误标识符
let g:ycm_error_symbol='>E'
" " 警告标识符
let g:ycm_warning_symbol='>*'
" 取消错误提示
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 0


let g:ycm_use_clangd = 0

"ctags
" 启用 Gutentags
let g:gutentags_enabled = 1
" 保存文件时自动生产tags 文件
let g:gutentags_generate_on_write=1
" 设置标签文件的存储路径
let g:gutentags_cache_dir = '~/.cache/tags'
" 指定如何列出项目中的文件
let g:gutentags_file_list_command='git ls-files'
" 指定项目根目录
let g:gutentags_project_root=['.git', '.svn', '.hg']
" 在状态栏显示 Gutentags 状态
set statusline+=%{gutentags#statusline()}


if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("./cscope.out")
		cs add ./cscope.out
	"else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	"if $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif

if filereadable("./tags")
	set tags+=./tags;
endif


"set fenc=utf-8
" set fileencodings=utf-8

set cscopequickfix=e-,i-,s-,t-
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j
"inoremap { {}<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap < <><ESC>i}}

"%% 自动补全目录
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=20

let NERDTreeWinSize=40

"end 快捷键

"let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=0
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
"let Tlist_Inc_Winwidth=1

set tags+=~/.vim/systags;

"常见用法 
" 1、十六进制打开文件
" :%!xxd  
" :%!xxd -r

" 2、查看二进制文件
" hexdump -C uImage |less 
"
