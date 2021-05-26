set hidden

nnoremap <a-S-l> :bn<CR>
nnoremap <a-s-h> :bp<CR>
nnoremap <a-s-k> :b#<CR>

nnoremap <silent> <a-s-b> :CtrlPBuffer<cr>
nnoremap <silent> <a-b> :buffers<cr>

let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <a-d> :call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
                \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc
