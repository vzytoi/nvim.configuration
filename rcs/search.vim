set smartcase " ignore case on search if no uppercase
set hlsearch " show search result before enter
set magic " no need to escape in regex

" preview search and replace
let g:incsearch#auto_nohlsearch = 1

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1

nnoremap <silent> <leader>s :let @/=""<CR>

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

set statusline=%{anzu#search_status()}

let g:loaded_matchit = 1
