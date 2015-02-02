"reference http://stevelosh.com/blog/2010/09/coming-home-to-vim/?
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set number
set hidden
set wildmenu

"vim color
syntax enable
set background=dark
colorscheme github

"set cursorline
"au WinLeave * set nocursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'jnwhiteh/vim-golang'
"Bundle 'eiginn/netrw'

filetype plugin indent on

"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTree<CR>
