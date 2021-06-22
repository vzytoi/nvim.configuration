
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"

" Author: Cyprien Henner
" Email: cyprien.henner@icloud.com

let mapleader = ' '

let g:ignore_files = ['ctrlp.vim']
for g:vim_file in split(globpath(stdpath('config')."/core/", '*.vim'), '\n')
    if index(g:ignore_files, filter(matchlist(g:vim_file, '.\+\.vim'), 'v:val !=# ""')[0]) < 0
        execute printf("source %s", g:vim_file)
    endif
endfor
