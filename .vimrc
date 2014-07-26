colorscheme molokai
set background=dark
set cindent
set smarttab 
set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
set scrolloff=2
set autoindent
set showmode
set showcmd
set hidden
set ruler
set undofile
set number
syntax on

let mapleader = " "

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set backspace=indent,eol,start

vnoremap <leader>s :sort<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>s <C-w>v<C-w>l
nnoremap <leader>c <C-w>c
nnoremap <leader>n :vne<enter>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>t ysiw
nnoremap nt :NERDTreeToggle<CR>

set wrap
set formatoptions=qrn1

call pathogen#infect()
filetype plugin indent on
