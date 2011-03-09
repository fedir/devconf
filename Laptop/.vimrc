" Syntax coloring activation
syntax enable

" Dark color scheme by default
set background=dark
set nocompatible
set ruler
" Show whitespace characters by F4
nnoremap <silent> <F4> :set list!<CR>

""" Taglist plugin configuration """
" Removing variables list from the taglist panel for PHP files
let tlist_php_settings = 'php;c:class;f:function'
" Toggling taglist panel by F8
nnoremap <silent> <F8> :TlistToggle<CR>
" Autoupdate tags for php files on save
autocmd BufWritePost *.php :TlistUpdate

" One tab visually equal to 4 spaces
set tabstop=4

filetype on
filetype plugin on
filetype indent on

" Wraps selected text in XML / HTML comments
:vmap sx "zdi<!--<C-R>z--><ESC>  : wrap <!-- --> around VISUALLY selected Text

" Tabs are four columns wide. Each indentation level is one tab.
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 

" Vim copy / paste remapping 
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

""" Status line """
" Always visible
set laststatus=2
" Contents
set statusline=%<%F%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
