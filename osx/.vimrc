syntax on
set ts=2 sw=2
set expandtab
set ai
set number
set hlsearch!
set ruler
highlight Comment ctermfg=blue
set mps+=<:>
set sidescroll=1
set noswapfile


filetype plugin on
filetype indent on
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.vgo setf go
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
au BufNewFile,BufRead *.cl set ft=opencl
"au BufNewFile,BufRead *.cl setf opencl
au BufNewFile,BufRead *.sim set ft=simit


nno <F2> :set spell!<bar>set spell? <CR>
nno <F3> :set hls!<bar>set hls? <CR>
nno <F4> :set nu!<bar>set nu? <CR>
map <F9> :e ++enc=utf-8 <CR>
map <F10> :e ++enc=koi8-r <CR>
map <F11> :e ++enc=cp1251 <CR>
"map <F12> :e ++enc=ibm866 <CR>
map <F12> :e ++enc=gb2312 <CR>

autocmd BufReadPre * if getfsize(expand("%")) > 2000000 | syntax off | endif
