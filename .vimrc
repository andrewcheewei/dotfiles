" spaces instead of tab
:set expandtab

" line numbers
:set number

" tab creates an indent of 4 spaces
set tabstop=8
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

" enable syntax highlighting 
syntax on

execute pathogen#infect()

filetype plugin indent on
