" Vim >>> Vi
set nocompatible

" Enable syntax highlightning
syntax on

" Set <TAB> to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

" Automatically indent new lines and be smart about it
set autoindent
set smartindent

" Show line numbers
set number

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Adjust behaviour for Vagrantfile files
au BufRead,BufNewFile Vagrantfile set filetype=ruby ts=2 sw=2 sts=2
" Use INI syntax for .env
au BufRead,BufNewFile .env set filetype=dosini
