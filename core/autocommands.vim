autocmd BufWritePre * :call TrimWhitespace()

" Automatically reload the file if it is changed outside of Nvim, see
augroup auto_read
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif
  autocmd FileChangedShellPost * echohl WarningMsg
        \ | echo "File changed on disk. Buffer reloaded!" | echohl None
augroup END

" Display a message when the current file is not in utf-8 format.
augroup utf8_message
  autocmd!
  autocmd BufRead * if &fileencoding != 'utf-8' | unsilent echomsg 'File not in UTF-8 format!' | endif
augroup END

" Return to last edit position when opening a file
augroup resume_edit_position
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
augroup END

autocmd FileType javascript let b:coc_pairs_disabled = ['<', '>']

autocmd BufEnter * silent! lcd %:p:h

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

autocmd BufEnter * if (winnr('$') == 1 && &filetype == 'coc-explorer') | q | endif

augroup term_settings
  autocmd!
  " Do not use number and relative number for terminal inside nvim
  autocmd TermOpen * setlocal norelativenumber nonumber
  " Go to insert mode by default to start typing command
  autocmd TermOpen * startinsert
augroup END

augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
	command! -nargs=1 Math call s:Calc(<f-args>)
augroup END

augroup numbertoggle
  autocmd!
  autocmd InsertEnter * set nu nornu
  autocmd InsertLeave * set rnu nonu
augroup END

" Equalize window dimensions when resizing vim window
autocmd VimResized * tabdo wincmd =
