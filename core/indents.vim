" Number of spaces that a <Tab> counts for while
" performing editing operations.
" :h sts
set softtabstop=4

" Number of spaces that a <Tab> in the file counts for.
" :h ts
set tabstop=4

" Use the appropriate number of spaces to insert a <Tab>.
" :h et
set expandtab

" <Tab> insert blank in front of lines.
" :h sta
set smarttab

" Copy indent from current line when sstarting a new line.
" :h ai
set autoindent

" Do smart autoindenting when starting a new line.
" :h si
set smartindent

nnoremap < <<
nnoremap > >>

vnoremap < <gv
vnoremap > >gv
