""""""""""""""""""""""""""""""""""""""""""""
" vimrc
" Quiran Storey
"""""""""""""""""""""""""""""""""""""""""""

"General settings {
    filetype plugin indent on       " Enable filetype detection
    set number                      " Display line numbers
    set pastetoggle=<F2>            " Use F2 to toggle auto-indenting for pasting code
    syntax enable                   " Enable syntax highlighting
    set background=dark             " Use the dark solarized theme
    let g:solarized_termtrans=1     " Fixes an issue with iTerm2 Solarized theme and background
    colorscheme solarized           " Use the solarized color scheme from .vim/colors/
    set showmatch                   " Show the matching part of the pair for [] {} or ()
    set ruler                       " Show the ruler at the bottom
    let g:netrw_liststyle=3         " Use file tree appearance in explorer mode
    set undofile                    " Persist undo/redo after exiting VIM
    set undodir=~/.vim/vimundo/     " Don't scatter undo files all over the place
    set nocompatible
    set laststatus=2                " Always show the status line (file name, current mode, etc)
"}

"Split settings {
    set splitbelow                  " Create the new split below, instead of VIM's default
    set splitright                  " Create the new vertical split to the right, instead of VIM's default
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
set runtimepath^=~/.vim/bundle/vim-flake8       " Enable vim-flake8


"ctrlp settings {
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$\|italent\/html$\|clickthrough$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.orig$\|\.BACKUP\.\|\.BASE\.\|\.LOCAL\.\|\.REMOTE\.\|\.un\~$\|\.swp$',
        \ }
"}
