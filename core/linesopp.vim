" remap &<leader> to 1k and <leader>& to 1j up to 50

set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=100   " Idle time to write swap and trigger CursorHold
set redrawtime=1500  " Time in milliseconds for stopping display redraw

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

" toggle relative lines number and lines number

set rnu
set nuw=4

inoremap <c-c> <esc>
nnoremap <c-c> <esc>

augroup numbertoggle
  autocmd!
  autocmd InsertEnter * set nu nornu
  autocmd InsertLeave * set rnu nonu
augroup END

  " Equalize window dimensions when resizing vim window
  autocmd VimResized * tabdo wincmd =
