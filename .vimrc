set mouse=a
set ttymouse=xterm2
set title
set noswapfile

set number
set ruler
set ai nocp digraph ek hid ru sc wmnu noet nosol si
set bs=2 fo=cqrt shm=at ww=<,>,h,l ts=2 sw=2
set syn=on
set filetype=on
set nowrap
set ttyfast
set mps+=<:>
set sidescroll=1
set incsearch
set hls!

set dir=/tmp
set list listchars=tab:>-,trail:=,precedes:<,extends:>,nbsp:_

filetype plugin on
filetype indent on
au BufNewFile,BufRead *.json setf javascript
au BufRead,BufNewFile *.mustache setf mustache
au BufNewFile,BufRead *.vgo setf go
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
au BufNewFile,BufRead *.cl set ft=opencl
"au BufNewFile,BufRead *.cl setf opencl
au BufNewFile,BufRead *.sim set ft=simit

nmap <PageUp> <C-U><C-U>
nmap <PageDown> <C-D><C-D>

nno <F2> :set spell!<bar>set spell? <CR>
nno <F3> :set hls!<bar>set hls? <CR>
nno <F4> :set nu!<bar>set nu? <CR>

map <F9> :e ++enc=utf-8 <CR>
map <F10> :e ++enc=koi8-r <CR>
map <F11> :e ++enc=cp1251 <CR>
"map <F12> :e ++enc=ibm866 <CR>
map <F12> :e ++enc=gb2312 <CR>

set t_Co=256
syntax on

autocmd BufReadPre * if getfsize(expand("%")) > 2000000 | syntax off | endif
