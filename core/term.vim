" nnoremap <a-s> :vnew term://bash<cr>A
" nnoremap <a-s> :vsp\|term<cr>
" tnoremap <silent> <a-s> I<c-\><c-N>:bd!<cr>

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

augroup term_settings
  autocmd!
  " Do not use number and relative number for terminal inside nvim
  autocmd TermOpen * setlocal norelativenumber nonumber
  " Go to insert mode by default to start typing command
  autocmd TermOpen * startinsert
augroup END

let g:python3_host_prog = 'C:\Users\Cyprien\AppData\Local\Programs\Python\Python39\python.exe'

function TogglePS()
  let s:wn = expand('%:t')
  if s:wn == 'Powershell.EXE'
    execute "bd!"
  else
    execute "vsp\|term"
  endif
endfunction

nnoremap <silent> <a-s> :call TogglePS()<CR>
tnoremap <silent> <a-s> <c-\><c-N>:call TogglePS()<CR>
