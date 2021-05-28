" trim white space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    keeppatterns silent! g/^\n$/de
    call winrestview(l:save)
endfun
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
augroup non_utf8_file_warn
  autocmd!
  autocmd BufRead * if &fileencoding != 'utf-8' | unsilent echomsg 'File not in UTF-8 format!' | endif
augroup END

" Return to last edit position when opening a file
augroup resume_edit_position
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit' | execute "normal! g`\"zvzz" | endif
augroup END

let g:keymapmods = "insert,visual,terminal,normal"
let g:arrows = ['<Left>', '<Right>', '<Up>', '<Down>']

for s:mod in split(g:keymapmods, ',')
    let s:m = split(s:mod, '\zs')[0]
    execute s:m.'noremap <a-c> <esc>'
    for s:arrow in g:arrows
      execute s:m."noremap ".s:arrow." <Nop>"
    endfor
endfor

nnoremap <silent> <Tab> :tabnext<CR>
nnoremap <silent> <s-Tab> :tabprevious<CR>
nnoremap <silent> <leader>l :SidewaysRight<cr>
nnoremap <silent> <leader>h :SidewaysLeft<cr>
