
set nocompatible               " be iMproved
execute "set packpath+=" . expand("<sfile>:p:h")
" I could put vimrc stuff that depends on plugins in ~/.vim/after, but
"   preferring to be explicit
packloadall 

set fileformats=unix,dos
filetype on

set hls
set ignorecase
set smartcase
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set textwidth=80
" line numbers + formatting
set nu

""""""""""""""""""""""""""" ergonomics

" make scroll-wheel work windows in terminal
set mouse=a

" highlight current line
set cursorline

" <C-S> shortcut should work in every mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>




""""""""""""""""""""""""""" pretty
colorscheme desert


execute "source " . expand("<sfile>:p:h") . "/filetypes"

if has("gui_running")
    execute "source " . expand("<sfile>:p:h") . "/gvimrc"
endif
