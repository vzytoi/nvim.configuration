colorscheme sitruuna

set background=dark

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=gray guibg=NONE

if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

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
