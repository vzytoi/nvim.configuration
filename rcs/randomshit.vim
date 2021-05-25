" remove bells autocmd! GUIEnter * set vb t_vb=
set vb t_vb=

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" vim splits auto resize when resized
autocmd VimResized * wincmd =

set nowrap
nnoremap <silent> <a-g> :Goyo<cr>
set scrolloff=8

" :pwd = current file
" scroll
set mouse=a
autocmd BufEnter * silent! lcd %:p:h

" trim white space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    keeppatterns silent! g/^\n$/de
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

set nuw=4
set rnu
function ToggleNuRnu()
    execute "set nu!"
    execute "set rnu!"
endfunction
nnoremap <silent> <leader>n :call ToggleNuRnu()<CR>
vnoremap <silent> <leader>n :call ToggleNuRnu()<CR>

" delete terminal buffer when the term is exited
augroup terminal_settings
    autocmd!
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
    autocmd TermClose term://*
                \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
                \   call nvim_input('<CR>')  |
                \ endif
augroup END
nnoremap <a-s> :vnew term://bash<cr>
tnoremap <a-s> <c-\><c-N>:bd!<cr>
tnoremap <esc> <c-\><c-N>
tnoremap <a-h> <c-\><c-N><c-w>W
tnoremap <a-j> <c-\><c-N><c-w>j
tnoremap <a-k> <c-\><c-N><c-w>k
tnoremap <a-l> <c-\><c-N><c-w>w

" focus split (alt o)
function! ToggleZoom(toggle)
    if exists("t:restore_zoom") && (t:restore_zoom.win != winnr() || a:toggle == v:true)
        exec t:restore_zoom.cmd
        unlet t:restore_zoom
    elseif a:toggle
        let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
        vert resize | resize
    endi
endfunction
nnoremap <silent> <a-o> :call ToggleZoom(v:true)<CR>
augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
augroup ENDnoremap
