" 設定檔在/usr/share/vim/vimrc"
" vim73 at /opt/local/share/vim/vim73
"set nu et ts=4 sw=4 cino=>4
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
syntax on
set background=dark
set autoindent
highlight StatusLine term=bold,reverse cterm=bold,reverse

filetype on
filetype plugin on
let g:pydiction_location='~/.vim/ftplugin/pydiction/complete-dict'
set t_Co=256
set showcmd
set smartcase
" set mouse=a

if has("autocmd")
	filetype plugin indent on
endif


" 此為mavVim的設定
colorscheme darkZ
"colorscheme Tomorrow-Night-Eighties 
set gfn=Monaco:h14
set nu
set laststatus=2
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
set complete+=i

set nowrap

" for vertical split line moving
nmap <c-y> 10<C-w><
nmap <c-o> 10<C-w>>
nmap <c-u> 3<C-w>+
nmap <c-i> 3<C-w>-
nmap <c-h> <C-w><C-h>
nmap <c-j> <C-w><C-j>
nmap <c-k> <C-w><C-k>
nmap <c-l> <C-w><C-l>



" the key mapping for *.py
autocmd BufRead *.py imap `( ()<esc>ba
autocmd BufRead *.py imap #utf8 #-*- coding:utf-8 -*-<CR>
autocmd BufRead *.py imap #py32 #!/usr/bin/env python2.7-32<CR>
autocmd BufRead *.py imap #py #!/usr/bin/env python<CR>
autocmd BufRead *.py set smartindent
autocmd BufRead *.py set tabstop=4
autocmd BufRead *.py set shiftwidth=4
autocmd BufRead *.py set expandtab



"" the key mapping for *.c
autocmd BufRead *.c imap if<tab> if( ){<CR>}<esc>bba
autocmd BufRead *.c imap else<tab> else( ){<CR>}<esc>bba
autocmd BufRead *.c imap while<tab> while( ){<CR>}<esc>bba
autocmd BufRead *.c imap for<tab> for( ; ; ){<CR>}<esc>bbbba
autocmd BufRead *.c imap ic<tab> #include<><esc>ha
autocmd BufRead *.c imap icc<tab> #include""<esc>ha
autocmd BufRead *.c imap #ifd<tab> #ifdef DEBUG<CR>#endif<esc>ko
autocmd BufRead *.c imap pf<tab> printf("");<esc>hhi
autocmd BufRead *.c imap ist<tab> #include<stdio.h><CR>#include<stdlib.h><CR><CR>int main(int argc,char *argv[]){<CR>return 0;<CR>}<esc>kko
autocmd BufRead *.c imap str<tab> struct _ {<CR>} _;<esc>kwa
autocmd BufRead *.c imap def<tab> #define 
autocmd BufRead *.c imap #ifn<tab> #ifndef _<CR>#define _<CR><CR>#endif<esc>kkA
autocmd BufRead *.c imap re<tab> return ;<esc>i
autocmd BufRead *.c imap fdebug<tab> #define _DEBUG_ <CR>#ifdef _DEBUG_ <CR><tab>#define DEBUGPRINTF(x) fprintf(stderr,"[%s] %d : %s", __FUNCTION__ , __LINE__, x) <CR>#else <CR><tab>#define DEBUGPRINTF(x) <CR>#endif
autocmd BufRead *.c imap dpf<tab> DEBUGPRINTF("\n");<esc>hhhhi

" the key mapping for *.cpp
autocmd BufRead *.cpp imap if<tab> if( ){<CR>}<esc>bba
autocmd BufRead *.cpp imap else<tab> else( ){<CR>}<esc>bbba
autocmd BufRead *.cpp imap while<tab> while( ){<CR>}<esc>bba
autocmd BufRead *.cpp imap for<tab> for( ; ; ){<CR>}<esc>bbbbba
autocmd BufRead *.cpp imap ic<tab> #include<><esc>ha
autocmd BufRead *.cpp imap icc<tab> #include""<esc>ha
autocmd BufRead *.cpp imap def<tab> #define 
autocmd BufRead *.cpp imap #ifd<tab> #ifdef DEBUG<CR>#endif<esc>ko
autocmd BufRead *.cpp imap us<tab> using namespace ;<esc>i
autocmd BufRead *.cpp imap //8 // ********  ********<esc>9hi
autocmd BufRead *.cpp imap /*<tab> /*<CR><CR>*/<esc>ka
autocmd BufRead *.cpp imap fmain<tab> int main(int argc, char *argv[]){<CR><CR>return 0;}<esc>kA<tab>
autocmd BufRead *.cpp imap fdebug<tab> #define _DEBUG_ <CR>#ifdef _DEBUG_ <CR><tab>#define DPRINTF printf <CR>#else <CR><tab>#define DEBUGPRINTF(x) <CR>#endif
autocmd BufRead *.cpp imap dpf<tab> DPRINTF("\n");<esc>hhhhi
autocmd BufRead *.cpp imap pf<tab> printf("");<esc>hhi

" the key mapping for *.h
autocmd BufRead *.h imap if<tab> if( ){<CR>}<esc>bbba
autocmd BufRead *.h imap else<tab> else( ){<CR>}<esc>bbba
autocmd BufRead *.h imap while<tab> while( ){<CR>}<esc>bbba
autocmd BufRead *.h imap for<tab> for( ; ; ){<CR>}<esc>bbbbba
autocmd BufRead *.h imap ic<tab> #include<><esc>ha
autocmd BufRead *.h imap icc<tab> #include""<esc>ha
autocmd BufRead *.h imap def<tab> #define 
autocmd BufRead *.h imap #ifd<tab> #ifdef DEBUG<CR>#endif<esc>ko
autocmd BufRead *.h imap stru<tab> struct _ {<CR>} _;<esc>kwa
autocmd BufRead *.h imap #ifn<tab> #ifndef _<CR>#define _<CR><CR>#endif<esc>kkA


" the key mapping for *.py
autocmd BufRead *.lua imap fun<tab> function ( )<CR>end<CR><esc>bbbi
autocmd BufRead,BufNewFile *.ngc set filetype=ngc


" 使用zc,zo來打開指定處的fold
" zC,zO 開關全部的fold
" zx 除了所在處，其他的fold全關
" zi 啟用/關閉 fold功能
"set foldmethod=indent
"set foldcolumn=3
"set foldnestmax=3
"

set hls
set list lcs=tab:\|\ 

set tags+=~/.vim/tags/tags_opencv
set tags+=~/.vim/tags/tags_qt
set tags+=~/.vim/tags/tags_avr
set tags+=~/.vim/tags/linux11-tags

" 修正iterm 下使用Vim時numerical pad 無法使用的問題
map <Esc>Oq 1
map <Esc>Or 2
map <Esc>Os 3
map <Esc>Ot 4
map <Esc>Ou 5
map <Esc>Ov 6
map <Esc>Ow 7
map <Esc>Ox 8
map <Esc>Oy 9
map <Esc>Op 0
map <Esc>On .
map <Esc>OQ /
map <Esc>OR *
map <kPlus> +
map <Esc>OS -
map! <Esc>Oq 1
map! <Esc>Or 2
map! <Esc>Os 3
map! <Esc>Ot 4
map! <Esc>Ou 5
map! <Esc>Ov 6
map! <Esc>Ow 7
map! <Esc>Ox 8
map! <Esc>Oy 9
map! <Esc>Op 0
map! <Esc>On .
map! <Esc>OQ /
map! <Esc>OR *
map! <kPlus> +
map! <Esc>OS -


"set expandtab
set tabstop=4
set shiftwidth=4



" NERDTree set
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
