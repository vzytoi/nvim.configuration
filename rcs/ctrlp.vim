let g:ctrlp_map = '<a-s-e>'
inoremap <silent> <a-s-e> <esc>:CtrlP<cr>
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_user_command = ['.hg', 'hg --cwd %s locate -I .']
