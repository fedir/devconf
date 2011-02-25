syntax enable
set background=dark
set nocompatible
set ruler

	filetype on
filetype plugin on
filetype indent on

set tabstop=4
"set shiftwidth=2
"set expandtab 

let tlist_php_settings = 'php;c:class;d:constant;f:function'

" vim-taglist : Autoupdate tags for php files on save
autocmd BufWritePost *.php :TlistUpdate

set laststatus=2
set statusline=%<%F%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
