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
set nrformats+=alpha

set spelllang=en_us,fr
nnoremap <silent> <leader>c :set spell!<cr>:echo &spell==0?"off":"on"<cr>
nnoremap U <c-r>

" inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

nnoremap <leader>g :CocSearch

nnoremap <silent> <a-i> :CocCommand prettier.formatFile<cr>

autocmd FileType javascript let b:coc_pairs_disabled = ['<', '>']

set synmaxcol=200  " Text after this column number is not highlighted
set nostartofline

set formatoptions-=o         " Disable comment-continuation (normal 'o'/'O')
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=100   " Idle time to write swap and trigger CursorHold
set redrawtime=1500  " Time in milliseconds for stopping display redraw

set directory^=$HOME/AppData/Local/nvim/tmp/undo//
set backupdir^=$HOME/AppData/Local/nvim/tmp/swap//
set directory^=$HOME/AppData/Local/nvim/tmp/swap//

set modifiable
set autoread

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

if has('persistent_undo')
    set undodir=$HOME/AppData/Local/nvim/tmp/undo/
    set undofile
endif

set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=100   " Idle time to write swap and trigger CursorHold

autocmd FileType markdown let b:coc_suggest_disable = 1
