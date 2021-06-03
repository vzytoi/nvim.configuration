
" let g:undotree_ShortIndicators = 1
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

" let g:NERDTreeWinPos = "right"
" let g:NERDTreeWinSize=37

" let g:NERDTreeShowHidden = 1
" let g:NERDTreeAutoDeleteBuffer = 1

" let g:undotree_SetFocusWhenToggle = 1

" " prevent other window form replacing nerdtree in its own
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"             \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" " close vim when nerdtree is the last window
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
"             \ quit | endif

" function ToggleNERDTreeM()
"     try
"         execute "NERDTreeToggle %"
"     catch
"         execute "NERDTreeToggle"
"     endtry
" endfunction

" autocmd FileType nerdtree nnoremap <buffer> <silent> <a-s> <nop>

" " sync tree with current openned file
" autocmd BufRead * call SyncTree()

" function! IsNERDTreeOpen()
"     return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction

" function! SyncTree()
"     if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"         NERDTreeFind
"         wincmd p
"     endif
" endfunction

nnoremap <silent> <a-u> :UndotreeToggle<cr>
" nnoremap <silent> <a-e> :call ToggleNERDTreeM()<cr>
" vnoremap <silent> <a-e> <esc>:call ToggleNERDTreeM()<cr>

nnoremap <silent> <a-e> :CocCommand explorer<cr>
autocmd BufEnter * if (winnr('$') == 1 && &filetype == 'coc-explorer') | q | endif
