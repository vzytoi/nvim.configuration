set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

function! Preserve(command)
    let search = @/
    let cursor_position = getpos('.')
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    execute a:command
    let @/ = search
    call setpos('.', window_position)
    normal! zt
    call setpos('.', cursor_position)
endfunction

function! Indent()
    call Preserve('normal gg=G')
endfunction

nnoremap <silent> <a-i> :CocCommand prettier.formatFile<cr>

nnoremap < <<
nnoremap > >>

vnoremap < <gv
vnoremap > >gv
