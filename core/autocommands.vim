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

let g:keymapmods = "insert,visual,terminal,normal"
let g:arrows = ['<Left>', '<Right>', '<Up>', '<Down>']

autocmd FileType javascript let b:coc_pairs_disabled = ['<', '>']

for s:mod in split(g:keymapmods, ',')
    execute s:mod[0].'noremap <a-c> <esc>'
	for s:arrow in g:arrows
		execute s:mod[0]."noremap ".s:arrow." <Nop>"
    endfor
endfor

autocmd BufEnter * silent! lcd %:p:h

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

function SplitResize(k)
    if ((a:k == "h" && winnr() == 1) || (a:k == "l" && winnr() == winnr('$')))
        execute ":vert res -5"
    elseif ((a:k == "l" && winnr() == 1) || (a:k == "h" && winnr() == winnr('$')))
        execute ":vert res +5"
    endif
endfunction

autocmd BufEnter * if (winnr('$') == 1 && &filetype == 'coc-explorer') | q | endif

augroup term_settings
  autocmd!
  " Do not use number and relative number for terminal inside nvim
  autocmd TermOpen * setlocal norelativenumber nonumber
  " Go to insert mode by default to start typing command
  autocmd TermOpen * startinsert
augroup END

function TogglePS()
  let s:wn = expand('%:t')
  if s:wn == 'Powershell.EXE'
    execute "bd!"
  else
    execute "vsp\|term"
  endif
endfunction

" focus split (alt o)
function! ToggleZoom(toggle)
    if exists("t:restore_zoom") && (t:restore_zoom.win != winnr() || a:toggle == v:true)
        exec t:restore_zoom.cmd
        unlet t:restore_zoom
    elseif a:toggle
        let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
        vert resize | resize
    endif
endfunction

augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
	command! -nargs=1 Math call s:Calc(<f-args>)
augroup END

function s:Calc(calcul)

    let s:filename = stdpath('config') . '/txt/math_history.txt'
    let s:opp = a:calcul
    let h = readfile(s:filename)

    if stridx(a:calcul, '?') != -1
        let s:opp = substitute(a:calcul, "?", h[-1], "")
    endif

    let h = add(h, s:opp)
    echo system('python -c "from math import *; print('.s:opp.')"')
    call writefile(h, s:filename)

endfunction

let nkeys = {'1':"&",'2':"é",'3':'"','4':"'",'5':"(",'6':"-",'7':"è",'8':"_",'9':"ç",'0':"à"}

for i in range(1, 50)
    let arr = []
    for l in split(string(i), '\zs')
        let arr = add(arr, nkeys[l])
    endfor
    for s:mod in ['n', 'v']
        execute s:mod.'noremap '. join(arr, '').'<leader> '.i.'k'
        execute s:mod.'noremap <leader>'. join(arr, '').' '.i.'j'
    endfor
endfor

augroup numbertoggle
  autocmd!
  autocmd InsertEnter * set nu nornu
  autocmd InsertLeave * set rnu nonu
augroup END

" Equalize window dimensions when resizing vim window
autocmd VimResized * tabdo wincmd =
