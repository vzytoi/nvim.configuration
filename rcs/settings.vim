set wildignore+=*/.git/*
set autochdir
set lazyredraw
filetype indent plugin on
let mapleader = " "
set nowrap
set scrolloff=8
set mouse=a
" remove bells
set vb t_vb=
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,list:full
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['extact', 'substring', 'fuzzy']
