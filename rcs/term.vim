" nnoremap <a-s> :vnew term://bash<cr>A
nnoremap <a-s> :vsp\|term<cr>A
tnoremap <silent> <a-s> I<c-\><c-N>:bd!<cr>

tnoremap <esc> <c-\><c-N>

tnoremap <a-h> <c-\><c-N><c-w>W
tnoremap <a-j> <c-\><c-N><c-w>j
tnoremap <a-k> <c-\><c-N><c-w>k
tnoremap <a-l> <c-\><c-N><c-w>w

tnoremap <silent> <c-h> <c-\><c-N>:call SplitResize("h")<CR>
tnoremap <silent> <c-l> <c-\><c-N>:call SplitResize("l")<CR>

let &shell = has('win32') ? 'powershell' : 'pwsh'
set shellquote= shellpipe=\| shellxquote=
set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
set shellredir=\|\ Out-File\ -Encoding\ UTF8

" let g:python3_host_prog = 'C:\\Users\\Cyprien\\AppData\\Local\\Programs\\Python\\Python39'
