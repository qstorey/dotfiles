""""""""""""""""""""""""""""""""""""""""""""
" vimrc
" Quiran Storey
"""""""""""""""""""""""""""""""""""""""""""

"General settings {
    filetype plugin indent on       " Enable filetype detection
    set number                      " Display line numbers
    set showcmd                     " Show last command in bottom bar
    set cursorline                  " Highlight current line
    set wildmenu                    " Autocomplete for command menu
    syntax enable                   " Enable syntax highlighting
    set background=dark             " Use the dark solarized theme
    let g:solarized_termtrans=1     " Fixes an issue with iTerm2 Solarized theme and background
    colorscheme solarized           " Use the solarized color scheme from .vim/colors/
    set showmatch                   " Show the matching part of the pair for [] {} or ()
    set ruler                       " Show the ruler at the bottom
    let g:netrw_liststyle=3         " Use file tree appearance in explorer mode
    set undofile                    " Persist undo/redo after exiting VIM
    set undodir=~/.config/nvim/undo/     " Don't scatter undo files all over the place
    set nocompatible
    set laststatus=2                " Always show the status line (file name, current mode, etc)
    set hlsearch                    " Highlight search match
"}

"Split settings {
    set splitright                  " Create the new vertical split to the right, instead of VIM's default
"}

"Tab settings {
    set expandtab                   " Tab using spaces
"}

"Navigation settings {
    noremap <up> <nop>
    noremap <down> <nop>
    noremap <left> <nop>
    noremap <right> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
"}

set runtimepath^=~/.config/nvim/bundle/ctrlp.vim        " Enable ctrlp
set runtimepath^=~/.config/nvim/bundle/vim-flake8       " Enable vim-flake8
set runtimepath^=~/.config/nvim/bundle/nerdtree         " Enable nerdtree

"ctrlp settings {
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$\|italent\/html$\|clickthrough$\|venv$',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.orig$\|\.BACKUP\.\|\.BASE\.\|\.LOCAL\.\|\.REMOTE\.\|\.un\~$\|\.swp$',
        \ }
"}

"vim-flake8 settings{
    autocmd BufWritePost *.py call Flake8()     " Run flake8 on write
"}

"nerdtree settings{
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.egg-info$']
"}
