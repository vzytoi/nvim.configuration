" remove bells autocmd! GUIEnter * set vb t_vb=
set vb t_vb=

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" vim splits auto resize when resized
autocmd VimResized * wincmd =

" trim white space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    keeppatterns silent! g/^\n$/de
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

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

" :pwd = current file
autocmd BufEnter * silent! lcd %:p:h

set nowrap
set nuw=4
set rnu

function ToggleNuRnu()
    execute "set nu!"
    execute "set rnu!"
endfunction

nnoremap <silent> <leader>n :call ToggleNuRnu()<CR>
vnoremap <silent> <leader>n :call ToggleNuRnu()<CR>

nnoremap <silent> <a-g> :Goyo<cr>

nnoremap <a-s> :vnew term://bash<cr>
tnoremap <a-s> exit<cr>

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

set scrolloff=8

" scroll
set mouse=a
