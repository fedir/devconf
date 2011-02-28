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

""" Taglist
" PHP tags structure declaration
let tlist_php_settings = 'php;c:class;d:constant;f:function'
" autoupdate tags for php files on save
autocmd BufWritePost *.php :TlistUpdate
let Tlist_WinWidth = 50
" tag window toggling
map <F8> :TlistToggle<cr>
let Tlist_GainFocus_On_ToggleOpen = 1
" ctags access
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
map <F12> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"" Whitespaces
nnoremap <silent> <F4> :set list!<CR>
"" Statusline 
" always visible
set laststatus=2
" Contents
set statusline=%<%F%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
