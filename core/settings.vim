
" Description: Number of spaces that a <Tab>
" counts for while performing editing operations.
" Help: `:h sts`
set softtabstop=4

" Description: Number of spaces that a <Tab>
" in the file counts for.
" Help: `:h ts`
set tabstop=4

" Description: Use the appropriate number of
" spaces to insert a <Tab>.
" Help: `:h et`
set expandtab

" Description: <Tab> insert blank in front of lines.
" Help: `:h sta`
set smarttab

" Description: Copy indent from current line
" when sstarting a new line.
" Help: `:h ai`
set autoindent

" Description: Do smart autoindenting when starting a new line.
" Help: `:h si`
set smartindent

set autochdir

set wildignore+=*/.git/*
set lazyredraw
filetype indent plugin on
let mapleader = " "
set nowrap
set scrolloff=8
set mouse=a
" remove bells
set vb t_vb=

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set wildmenu
set wildmode=longest:full,list:full
set completeopt=menuone,noinsert,noselect
set nrformats+=alpha

set spelllang=en_us,fr

set nostartofline

set formatoptions-=o         " Disable comment-continuation (normal 'o'/'O')
if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j " Delete comment character when joining commented lines
endif

set timeout ttimeout
set timeoutlen=500   " Time out on mappings
set ttimeoutlen=10   " Time out on key codes
set updatetime=100   " Idle time to write swap and trigger CursorHold
set redrawtime=1500  " Time in milliseconds for stopping display redraw

set directory^=$HOME/AppData/Local/nvim/tmp/undo//
set backupdir^=$HOME/AppData/Local/nvim/tmp/swap//
set directory^=$HOME/AppData/Local/nvim/tmp/swap//

set modifiable
set autoread

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

if has('persistent_undo')
    set undodir=$HOME/AppData/Local/nvim/tmp/undo/
    set undofile
endif

set hidden

set splitright
set splitbelow

set ignorecase    " Search ignoring case
set smartcase     " Keep case when searching with *
set infercase     " Adjust case in insert completion mode
set incsearch     " Incremental search
set wrapscan      " Searches wrap around the end of the file
set hlsearch      " Highlight search results

" preview search and replace
let g:incsearch#auto_nohlsearch = 1

let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1

set statusline=%{anzu#search_status()}

let g:loaded_matchit = 1

let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_timeout = 100
let g:matchup_matchparen_insert_timeout = 30
let g:matchup_override_vimtex = 1
let g:matchup_delim_noskips = 0

let g:startify_custom_header = [
\        '                          _           _  _                   ',
\        '                         | |         (_)( )                  ',
\        '      __   __ ____ _   _ | |_   ___   _ |/  ___   _ __   ___ ',
\        '      \ \ / /|_  /| | | || __| / _ \ | |   / __| | v__| / __|',
\        '       \ V /  / / | |_| || |_ | (_) || |   \__ \ | |   | (__ ',
\        '        \_/  /___| \__, | \__| \___/ |_|   |___/ |_|    \___|',
\        '                    __/ |                                    ',
\        '                   |___/                                     ']

let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   My most recently used files:'] },
        \ { 'type': 'files',     'header': ['   My most recently used files in the current directory:']},
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]

lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = '$ ',
    color_devicons = true,
    mappings = {
      n = {
        ["<c-c>"] = actions.close,
        ["<esc>"] = actions.close
        },
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<a-s-e>"] = actions.close,
        ["<a-s-s>"] = actions.close,
        ["<a-s-c>"] = actions.close
        }
      }
    },
  extensions = {
    fzu_native = {
      override_generic_sorter = false,
      override_file_sorter = true
      }
    },
  }

require('telescope').load_extension('fzy_native')
EOF

let g:MvVis_mappings = 0

" -------------------------------------------------------------------------------

" The *g:ycm_key_list_select_completion* option

" This option controls the key mappings used to select the first completion
" string. Invoking any of them repeatedly cycles forward through the completion
" list.

" Some users like adding '<Enter>' to this list.

" Default: "['<TAB>', '<Down>']"
" >
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>', '<C-n>']
" <

" ------------------------------------------------------------------------------

" The *g:ycm_key_list_previous_completion* option

" This option controls the key mappings used to select the previous completion
" string. Invoking any of them repeatedly cycles backwards through the completion
" list.

" Note that one of the defaults is '<S-TAB>' which means Shift-TAB. That mapping
" will probably only work in GUI Vim (Gvim or MacVim) and not in plain console
" Vim because the terminal usually does not forward modifier key combinations to
" Vim.

" Default: "['<S-TAB>', '<Up>']"
" >
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>', '<C-p>']
" <

" -------------------------------------------------------------------------------

" The *g:ycm_key_list_stop_completion* option

" This option controls the key mappings used to close the completion menu. This
" is useful when the menu is blocking the view, when you need to insert the
" '<TAB>' character, or when you want to expand a snippet from UltiSnips [22] and
" navigate through it.

" Default: "['<C-y>']"
" >
let g:ycm_key_list_stop_completion = ['<C-y>', '<Cr>']
" <

" -------------------------------------------------------------------------------

" The *g:ycm_filetype_blacklist* option

" This option controls for which Vim filetypes (see ':h filetype') should YCM be
" turned off. The option value should be a Vim dictionary with keys being
" filetype strings (like 'python', 'cpp', etc.) and values being unimportant (the
" dictionary is used like a hash set, meaning that only the keys matter).

" See the |g:ycm_filetype_whitelist| option for more details on how this works.

" Default: '[see next line]'
" >
let g:ycm_filetype_blacklist = {
                  \ 'tagbar' : 1,
                  \ 'qf' : 1,
                  \ 'notes' : 1,
                  \ 'markdown' : 1,
                  \ 'unite' : 1,
                  \ 'text' : 1,
                  \ 'vimwiki' : 1,
                  \ 'pandoc' : 1,
                  \ 'infolog' : 1,
                  \ 'mail' : 1,
                  \ 'TelescopePrompt': 1
                  \}
" <

let &shell = has('win32') ? 'powershell' : 'pwsh'
set shellquote= shellpipe=\| shellxquote=
set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
set shellredir=\|\ Out-File\ -Encoding\ UTF8
let g:python3_host_prog = 'C:\Users\Cyprien\AppData\Local\Programs\Python\Python39\python.exe'

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if has("termguicolors")
    set termguicolors
endif
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
    let &t_Co = 256
endif

syntax enable
set background=dark
colorscheme xcodedarkhc
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=gray guibg=NONE

set laststatus=2
set statusline=
set statusline+=\ %l
set statusline+=/
set statusline+=%L
set statusline+=\ \ %t

set rnu
set nuw=4
