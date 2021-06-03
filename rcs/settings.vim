set autochdir
autocmd BufEnter * silent! lcd %:p:h

set wildignore+=*/.git/*
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
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif
set nrformats+=alpha

set spelllang=en_us,fr
nnoremap <silent> <leader>c :set spell!<cr>:echo &spell==0?"off":"on"<cr>
nnoremap U <c-r>

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
