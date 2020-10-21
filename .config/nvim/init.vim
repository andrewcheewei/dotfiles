execute pathogen#infect()
" enable syntax highlighting 
syntax on

" filetype detection
filetype  plugin indent on

" line numbers
set relativenumber
set number

" tab creates an indent of 4 spaces
set tabstop=8
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

colo spacecamp

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" vim-latex-live-preview
let g:livepreview_previewer = 'zathura'
