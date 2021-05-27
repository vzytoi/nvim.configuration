" remap &<leader> to 1k and <leader>& to 1j up to 50

set timeoutlen=500

let nkeys = {'1':"&",'2':"é",'3':'"','4':"'",'5':"(",'6':"-",'7':"è",'8':"_",'9':"ç",'0':"à"}

for i in range(1, 50)
    let arr = []
    for l in split(string(i), '\zs')
        let arr = add(arr, nkeys[l])
    endfor
    execute 'nnoremap '. join(arr, '').'<leader> '.i.'k'
    execute 'nnoremap <leader>'. join(arr, '').' '.i.'j'
endfor

" toggle relative lines number and lines number

set rnu
set nuw=4

function ToggleNuRnu()
    execute "set nu!"
    execute "set rnu!"
endfunction

nnoremap <silent> <leader>ln :call ToggleNuRnu()<cr>
