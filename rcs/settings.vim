set wildignore+=*/.git/*
set autochdir
set lazyredraw
filetype indent plugin on
let mapleader = " "
set nowrap
set ttimeout
set ttimeoutlen=100
set scrolloff=8
set mouse=a
" remove bells
set vb t_vb=
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,list:full
set completeopt=menuone,noinsert,noselect
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif
set nrformats+=alpha
set clipboard=unnamedplus
