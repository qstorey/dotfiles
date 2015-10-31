""""""""""""""""""""""""""""""""""""""""""""
" vimrc
" Quiran Storey
"""""""""""""""""""""""""""""""""""""""""""

"General settings {
    filetype plugin indent on       " Enable filetype detection
    set number                      " Display line numbers
    set pastetoggle=<F2>            " Use F2 to toggle auto-indenting for pasting code
    syntax on                       " Enable syntax highlighting
    set showmatch                   " Show the matching part of the pair for [] {} or ()
    set ruler                       " Show the ruler at the bottom
"}

"Tab settings {
    " Tab using spaces
    set expandtab
"}

"Disable arrow key nav {
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"}

set runtimepath^=~/.vim/bundle/ctrlp.vim        " Enable ctrlp
