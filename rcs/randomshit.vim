filetype indent plugin on
syntax on
syntax enable
let mapleader = " "

" remove bells autocmd! GUIEnter * set vb t_vb=
set vb t_vb=

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" vim splits auto resize when resized
autocmd VimResized * wincmd =

set nowrap

nnoremap <silent> <a-g> :Goyo<cr>

set scrolloff=8

" Remove certain character from file name pattern matching
set isfname-==
set isfname-=,
" :pwd = current file
" scroll
set mouse=a
autocmd BufEnter * silent! lcd %:p:h

" trim white space
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    keeppatterns silent! g/^\n$/de
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

set nuw=4
set rnu
function ToggleNuRnu()
    execute "set nu!"
    execute "set rnu!"
endfunction
nnoremap <silent> <leader>n :call ToggleNuRnu()<CR>
vnoremap <silent> <leader>n :call ToggleNuRnu()<CR>

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

" Automatically reload the file if it is changed outside of Nvim, see
" https://unix.stackexchange.com/a/383044/221410. It seems that `checktime`
" command does not work in command line. We need to check if we are in command
" line before executing this command. See also
" https://vi.stackexchange.com/a/20397/15292.
augroup auto_read
  autocmd!
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif
  autocmd FileChangedShellPost * echohl WarningMsg
        \ | echo "File changed on disk. Buffer reloaded!" | echohl None
augroup END

" Display a message when the current file is not in utf-8 format.
" Note that we need to use `unsilent` command here because of this issue:
" https://github.com/vim/vim/issues/4379
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
