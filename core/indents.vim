" Description: Number of spaces that a <Tab>
" counts for while performing editing operations.
" Help: `:h sts`
set softtabstop=4

" Description: Number of spaces that a <Tab>
" in the file counts for.
" Help: `:h ts`
set tabstop=4

" Description: Use the appropriate number of
" spaces to insert a <Tab>.
" Help: `:h et`
set expandtab

" Description: <Tab> insert blank in front of lines.
" Help: `:h sta`
set smarttab

" Description: Copy indent from current line
" when sstarting a new line.
" Help: `:h ai`
set autoindent

" Description: Do smart autoindenting when starting a new line.
" Help: `:h si`
set smartindent

nnoremap < <<
nnoremap > >>

vnoremap < <gv
vnoremap > >gv
