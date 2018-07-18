syntax on
filetype plugin on
filetype indent on

set sts=2 sw=2 ts=2 noex
set smarttab
set ai
set number
set hlsearch!
set ruler

set mps+=<:>
set sidescroll=1
set noswapfile

set noshowmode
set noruler
set laststatus=0
set noshowcmd

au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.vgo setf go
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda
au BufNewFile,BufRead *.cl set ft=opencl
"au BufNewFile,BufRead *.cl setf opencl
au BufNewFile,BufRead *.sim set ft=simit
au BufNewFile,BufRead *.py set ft=python

autocmd Filetype python setlocal ts=2 sw=2 expandtab

nno <F2> :set spell!<bar>set spell? <CR>
nno <F3> :set hls!<bar>set hls? <CR>
nno <F4> :set nu!<bar>set nu? <CR>
map <F9> :e ++enc=utf-8 <CR>
map <F10> :e ++enc=koi8-r <CR>
map <F11> :e ++enc=cp1251 <CR>
"map <F12> :e ++enc=ibm866 <CR>
map <F12> :e ++enc=gb2312 <CR>

autocmd BufReadPre * if getfsize(expand("%")) > 2000000 | syntax off | endif
set term=screen-256color
color challenger_deep
