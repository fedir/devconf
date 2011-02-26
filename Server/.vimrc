syntax enable
set background=dark
set nocompatible
set ruler

filetype on
filetype plugin on
filetype indent on
let g:ragtag_global_maps = 1

set tabstop=4
set shiftwidth=4
set expandtab 

:vmap sx "zdi<!--<C-R>z--><ESC>  : wrap <!-- --> around VISUALLY selected Text
