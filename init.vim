
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"

" version 1.0
" github : https://github.com/vzytoi/nvim.configuration
" author : cyprien.henner@icloud.com

autocmd! BufWritePost *.vim so $MYVIMRC

let g:file_ignore = ["example.vim"]
for s:vim_file in split(globpath(stdpath('config')."/rcs/", "*.vim"), "\n")
    if index(g:file_ignore, filter(matchlist(s:vim_file, '[a-z]\+\.vim'), 'v:val !=# ""')[0]) < 0
        execute printf("source %s", s:vim_file)
    endif
endfor
