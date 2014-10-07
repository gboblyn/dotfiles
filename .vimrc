" Use Vim settings.
set nocompatible

" Sweet, sweet, dark molokai scheme.
colorscheme molokai
set background=dark

" Determine indention by filetype.
set autoindent
filetype plugin indent on

set modelines=0 " Do not check for file-specific settings.

" Tab settings for 2 space tabs. I'm choosing not to use expandtab
" since it would not place nice with other's editors.
set tabstop=2
set shiftwidth=2
set softtabstop=2

set encoding=utf-8
set showmode " Show the current editing mode.
set showcmd  " Show partial command in last line of the screen.
set hidden   " Don't destroy buffers!
set ruler    " Show the line and column number of the cursor.
set number   " Show line numbers.
set gdefault " Use /g in :s commands by default.
syntax on    " Turn on syntax highlighting.
set wildmenu " Show wildcard suggestions.
set autoread " Automatically sense changes to file.

set backspace=indent,eol,start " Allow backspace to delete everything.

" Searching
set ignorecase " Igorne case when searching...
set smartcase  " unless the search pattern contains upper case letters.
set incsearch  " Show incremental search matches.
set showmatch  " Show matching bracket when inserting a new bracket.
set hlsearch   " Highlight search results.

" Change the default split behavior (left and above) to what I expect.
set splitbelow
set splitright

" Use backups.
set backup
set writebackup
set backupdir=~/.vim/backup

set directory=~/.vim/tmp    " Specify directory for swap files.
set undofile                " Save undo history to an undofile.
set tags=./tags;            " Add tag file from existing directory to tags.

" Make j and k act like you would expect.
nnoremap j gj
nnoremap k gk

" Change the leader key to something useful.
let mapleader = " "

vnoremap <leader>s :sort<CR>

" Necessary when using hlsearch.
nnoremap <leader><space> :noh<cr>

" Remap the tab key to jump to matching braces.
nnoremap <tab> %
vnoremap <tab> %

" Create new splits.
nnoremap <leader>\| :vne 
nnoremap <leader>- :sp 
nnoremap <leader>s <C-w>v<C-w>l

" Close split.
nnoremap <leader>c <C-w>c

" Navigate between splits.
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

" Toggle NERDTree to save some typing.
nnoremap nt :NERDTreeToggle<CR>

set wrap
set formatoptions=qrn1
call pathogen#infect()

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
