" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_map = '<a-s-e>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 1000

let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

let s:ignore_exts = join(readfile(stdpath('config').'\txt\ctrlp_ignore.txt'), '\|')
let g:ctrlp_custom_ignore = {
        \   'dir' : '\.git\|plugged\|undo' ,
        \   'file' : '\.\('.s:ignore_exts.'\)$'
        \ }

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <a-d> :silent! call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
                \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

inoremap <silent> <a-s-e> <esc>:CtrlP<cr>
