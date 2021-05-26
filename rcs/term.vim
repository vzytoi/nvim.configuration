nnoremap <a-s> :vnew term://bash<cr>A
tnoremap <a-s> <c-\><c-N>:bd!<cr>

tnoremap <esc> <c-\><c-N>

tnoremap <a-h> <c-\><c-N><c-w>W
tnoremap <a-j> <c-\><c-N><c-w>j
tnoremap <a-k> <c-\><c-N><c-w>k
tnoremap <a-l> <c-\><c-N><c-w>w

tnoremap <silent> <c-h> <c-\><c-N>:call SplitResize("h")<CR>
tnoremap <silent> <c-l> <c-\><c-N>:call SplitResize("l")<CR>
