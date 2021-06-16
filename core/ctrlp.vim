" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_map = '<a-s-e>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 1000

let g:ctrlp_open_multiple_files = "t"

let g:ctrlp_buffer_func = { 'enter': 'MyCtrlPMappings' }

  " Single VCS, listing command does not list untracked files:
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
  let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']

  " Multiple VCS's:
  let g:ctrlp_user_command = {
    \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files'],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
    \ 'fallback': 'find %s -type f'
    \ }

  " Single VCS, listing command lists untracked files (slower):
  let g:ctrlp_user_command =
    \ ['.git', 'cd %s && git ls-files -co --exclude-standard']

  let g:ctrlp_user_command =
    \ ['.hg', 'hg --cwd %s status -numac -I . $(hg root)'] " MacOSX/Linux

  let g:ctrlp_user_command = ['.hg', 'for /f "tokens=1" %%a in (''hg root'') '
    \ . 'do hg --cwd %s status -numac -I . %%a']           " Windows

let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("v")': ['<a-s>', '<RightMouse>'],
            \ 'OpenMulti()':          ['<a-o>'],
            \ 'PrtExit()':            ['<esc>', '<c-c>', '<a-s-e>']
            \ }

"~/AppData/Local/nvim/txt/ctrlp_ignore.txt (for gf)
let s:ignore_file = readfile(stdpath('config').'\txt\ctrlp_ignore.txt')
let s:deli = index(s:ignore_file, '')

let g:ctrlp_custom_ignore = {
            \   'dir': join(s:ignore_file[s:deli+1:], '\|'),
            \   'file' : '\.\('.join(s:ignore_file[:s:deli-1], '\|').'\)$'
            \ }

func! MyCtrlPMappings()
    nnoremap <buffer> <silent> <a-d> :silent! call <sid>DeleteBuffer()<cr>
endfunc

func! s:DeleteBuffer()
    let line = getline('.')
    let bufid = line =~ '\[\d\+\*No Name\]$' ? str2nr(matchstr(line, '\d\+'))
                \ : fnamemodify(line[2:], ':p')
    exec "bd" bufid
    exec "norm \<F5>"
endfunc

inoremap <silent> <a-s-e> <esc>:CtrlP<cr>
