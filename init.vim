
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"

" github : https://github.com/vzytoi/nvim.configuration
" author : cyprien.henner@icloud.com

let mapleader = '\<Space>'

let g:file_ignore = ['example.vim', 'otherfile.vim']
for g:vim_file in split(globpath(stdpath('config')."/rcs/", '*.vim'), '\n')
    if index(g:file_ignore, filter(matchlist(g:vim_file, '[a-z]\+\.vim'), 'v:val !=# ""')[0]) < 0
        execute printf("source %s", g:vim_file)
    endif
endfor
