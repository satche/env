" Options
syntax on
colorscheme monokai

set title
set hlsearch
set number
set autoindent
set nobackup
set nowritebackup
set mouse=a
set tabstop=2

set shiftwidth=2
set softtabstop=2

" Tabs
set smarttab
nnoremap te :tabedit<Space>
nnoremap tc :tabclose<CR>


" Tree view
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25

" Plugin manager (vim-plug) auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

call plug#end()
