nnoremap <c-k> :m .-2<CR>==
nnoremap <c-j> :m .+1<CR>==

inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi

vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

vnoremap <silent> <a-c> :call NERDComment(0,"toggle")<CR>
nnoremap <silent> <a-c> :call NERDComment(0,"toggle")<CR>
