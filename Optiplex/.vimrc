" Syntax highlights
syntax enable
" Default theme
set background=dark
set nocompatible
set ruler
" Binary edit mode - not to add new line at the end of the existing file (compatibility)
set binary

" Show whitespace characters by F4
nnoremap <silent> <F4> :set list!<CR>

filetype on
filetype plugin on
filetype indent on

" Tabs are four columns wide. Each indentation level is one tab.
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 

""" Taglist
" PHP tags structure declaration
let tlist_php_settings = 'php;c:class;f:function'
" autoupdate tags for php files on save
autocmd BufWritePost *.php :TlistUpdate
let Tlist_WinWidth = 50
" tag window toggling
map <F8> :TlistToggle<cr>
" do not expand taglist on open
let Tlist_GainFocus_On_ToggleOpen = 0
" ctags access
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
map <F12> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"" Statusline 
" always visible
set laststatus=2
" Contents
set statusline=%<%F%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)'%02b'

" Disables mouse support
set mouse-=a
