nnoremap <silent> <Tab> :tabnext<CR>
nnoremap <silent> <s-Tab> :tabprevious<CR>

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

nnoremap U <c-r>

nnoremap <c-o> <c-o>zz

nnoremap <a-S-l> :bn<CR>
nnoremap <a-s-h> :bp<CR>
nnoremap <silent> <a-s-k> :b#<CR>

nnoremap <a-h> <c-w>W
nnoremap <a-l> <c-w>w
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-q> <c-w>q

nnoremap <silent> <leader>s :let @/=""<CR>

nnoremap < <<
nnoremap > >>

vnoremap < <gv
vnoremap > >gv

tnoremap <esc> <c-\><c-N>

tnoremap <a-h> <c-\><c-N><c-w>W
tnoremap <a-j> <c-\><c-N><c-w>j
tnoremap <a-k> <c-\><c-N><c-w>k
tnoremap <a-l> <c-\><c-N><c-w>w

inoremap <c-c> <esc>
nnoremap <c-c> <esc>

nnoremap <silent> <a-i> :CocCommand prettier.formatFile<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> gp :<C-U>call CocAction('doHover')<CR>

nmap <silent> <leader>tg :CocCommand git.toggleGutters<cr>

nnoremap <silent> <leader>c :set spell!<cr>:echo &spell==0?"off":"on"<cr>

nnoremap <silent> <a-s-b> :CtrlPBuffer<cr>
nnoremap <silent> <a-b> :buffers<cr>

noremap <silent> <c-h> :call SplitResize("h")<CR>
nnoremap <silent> <c-l> :call SplitResize("l")<CR>

vmap L <Plug>(MvVisRight)
vmap K <Plug>(MvVisUp)=gv
vmap J <Plug>(MvVisDown)=gv
vmap H <Plug>(MvVisLeft)

nnoremap <silent> <a-s-e> :Telescope git_files<cr>
nnoremap <silent> <a-s-s> :Telescope live_grep<cr>
nnoremap <silent> <a-s-c> :Telescope git_commits<cr>
nnoremap <silent> <a-s-b> :Telescope buffers<cr>
nnoremap <silent> <a-s-f> :Telescope find_files<cr>

nnoremap <silent> <leader>rc :Telescope find_files cwd=~/AppData/Local/nvim/<cr>

nnoremap <silent> <a-u> :UndotreeToggle<cr>
nnoremap <silent> <a-e> :CocCommand explorer<cr>

nnoremap <leader>g :G<cr><c-w>20-
nnoremap <leader>gl :G log<cr>
nnoremap <leader>gc :G commit<cr>
nnoremap <leader>gp :G push<cr>

tnoremap <silent> <c-h> <c-\><c-N>:call SplitResize("h")<CR>
tnoremap <silent> <a-s> <c-\><c-N>:call TogglePS()<CR>
nnoremap <silent> <a-s> :call TogglePS()<CR>

nnoremap <silent> <a-o> :call ToggleZoom(v:true)<CR>
nnoremap <silent> <a-g> :Goyo<cr>
tnoremap <silent> <c-l> <c-\><c-N>:call SplitResize("l")<CR>
