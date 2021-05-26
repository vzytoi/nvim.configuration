" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_map = '<a-s-e>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 1000

  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v(\.git|undo|plugged|swap)$',
    \ 'file': '\v\.(exe|zip)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <a-d> :silent! call <sid>DeleteBuffer()<cr>
    nnoremap <buffer> <silent> <a-s-e> <c-c>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
                \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

inoremap <silent> <a-s-e> <esc>:CtrlP<cr>
