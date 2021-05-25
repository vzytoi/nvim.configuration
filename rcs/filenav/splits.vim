set splitright
set splitbelow

function SplitResize(k)
    if ((a:k == "h" && winnr() == 1) || (a:k == "l" && winnr() == winnr('$')))
        execute ":vert res -5"
    elseif ((a:k == "l" && winnr() == 1) || (a:k == "h" && winnr() == winnr('$')))
        execute ":vert res +5"
    endif
endfunction

noremap <silent> <c-h> :call SplitResize("h")<CR>
nnoremap <silent> <c-l> :call SplitResize("l")<CR>

nnoremap <a-h> <c-w>W
nnoremap <a-l> <c-w>w
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
