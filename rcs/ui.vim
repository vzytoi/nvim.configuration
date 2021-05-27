
colorscheme sitruuna
set background=dark

if has("termguicolors")
    set termguicolors
endif

if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
    let &t_Co = 256
endif

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=gray guibg=NONE

set statusline=%f

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
augroup restorezoom
    au WinEnter * silent! :call ToggleZoom(v:false)
augroup ENDnoremap

nnoremap <silent> <a-o> :call ToggleZoom(v:true)<CR>
nnoremap <silent> <a-g> :Goyo<cr>
