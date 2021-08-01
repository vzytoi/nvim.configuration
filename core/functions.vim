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

function! ToggleZoom(toggle)
    if exists("t:restore_zoom") && (t:restore_zoom.win != winnr() || a:toggle == v:true)
        exec t:restore_zoom.cmd
        unlet t:restore_zoom
    elseif a:toggle
        let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
        vert resize | resize
    endif
endfunction

function TogglePS()
  let s:wn = expand('%:t')
  if s:wn == 'Powershell.EXE'
    execute "bd!"
  else
    execute "vsp\|term"
  endif
endfunction

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

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    keeppatterns silent! g/^\n$/de
    call winrestview(l:save)
endfun

let g:keymapmods = "insert,visual,terminal,normal"
let g:arrows = ['<Left>', '<Right>', '<Up>', '<Down>']

for s:mod in split(g:keymapmods, ',')
  execute s:mod[0].'noremap <a-c> <esc>'
  for s:arrow in g:arrows
    execute s:mod[0]."noremap ".s:arrow." <Nop>"
  endfor
endfor
