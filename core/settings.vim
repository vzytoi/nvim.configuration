
" +-------------------------+
" |                         |
" | INDENTS RELATED STUFFS  |
" |                         |
" +-------------------------+

" Description: Number of spaces that a <Tab> counts for while performing
" editing ipertations, like a <Tab> or using <BS>
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

" +-------------------------+
" |                         |
" |   DELAY RELATED STUFF   |
" |                         |
" +-------------------------+

" Description: This option and 'timeoutlen' determine the behavior when part of a
" mapped key sequence has been received. For example, if <c-f> is
" pressed and 'timeout' is set, Nvim will wait 'timeoutlen' milliseconds
" for any key that can follow <c-f> in a mapping.
" Help: `:h to`
set timeout

" Description: Time in milliseconds to wait for a mapped sequence to complete.
" Help: `:h tm`
set timeoutlen=500

" Description: This option and 'ttimeoutlen' determine the behavior when part of a
" key code sequence has been received by the |TUI|.
" Help: `:h ttimeout`
set ttimeout

" Description: Time in milliseconds to wait for a key code sequence to complete. Also
" used for CTRL-\ CTRL-N and CTRL-\ CTRL-G when part of a command has been typed.
" Help: `:h ttm`
set ttimeoutlen=10

" Description: If this many milliseconds nothing is typed the swap file will be
" written to disk (see |crash-recovery|).  Also used for the |CursorHold| autocommand event.
" Help: `:h ut`
set updatetime=500

" Description: Time in milliseconds for redrawing the display.  Applies to
" 'hlsearch', 'inccommand', |:match| highlighting and syntax highlighting.
" When redrawing takes more than this many milliseconds no further matches will be highlighted.
" Help: `:h `
set redrawtime=1500

" +-------------------------+
" |                         |
" |       LINE NUMBERS      |
" |                         |
" +-------------------------+

" Description: Show the line number relative to the line with the cursor in front of each line.
" Help: `:h rnu`
set rnu

" Description: Minimal number of columns to use for the line number.  Only relevant
" when the 'number' or 'relativenumber' option is set or printing lines with a line number.
" Help: `:h nuw`
set nuw=4

" +-------------------------+
" |                         |
" |   SEARCH RELATED STUFF  |
" |                         |
" +-------------------------+

" Description: Override the 'ignorecase' option if the search pattern
" contains upper case characters.
" Help: `:h scs`
set smartcase

" Description: When doing keyword completion in insert mode |ins-completion|, and
" 'ignorecase' is also on, the case of the match is adjusted depending on the typed text.
" Help: `:h inf`
set infercase

" Description: While typing a search command, show where the pattern, as it was typed
" so far, matches.  The matched string is highlighted.  If the pattern
" is invalid or not found, nothing is shown.
" Help: `:h is`
set incsearch

" Description: Searches wrap around the end of the file.  Also applies to |]s| and
" |[s|, searching for spelling mistakes.
" Help: `:h ws`
set wrapscan

" Description: When there is a previous search pattern, highlight all its matches.
" The |hl-Search| highlight group determines the highlighting. Note that
" only the matching text is highlighted, any offsets are not applied.
" Help: `:h hls`
set hlsearch

" +-------------------------------+
" |                               |
" |      BACKUP RELATED STUFF     |
" |                               |
" +-------------------------------+

" Description: When on, Vim will change the current working directory whenever you
" open a file, switch buffers, delete a buffer or open/close a window.
" It will change to the directory containing the file which was opened or selected.
" Help: `:h acd`
set autochdir

" Description: When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
" Help: `:h ar`
set autoread

" Description: When on, Vim automatically saves undo history to an undo file when
" writing a buffer to a file, and restores undo history from the same file on buffer read.
" Help: `:h udf`
set undofile

" Description: List of directory names for the swap file, separated with commas.
" Help: `:h dir`
set directory^=$HOME/AppData/Local/nvim/tmp/undo//

" Description: List of directories for the backup file, separated with commas.
" Help: `:h bdir`
set backupdir^=$HOME/AppData/Local/nvim/tmp/swap//

" Description: List of directory names for undo files, separated with commas.
" Help: `:h udir`
set undodir=$HOME/AppData/Local/nvim/tmp/undo/

set wildignore+=*/.git/*
set lazyredraw
filetype indent plugin on
set nowrap
set scrolloff=8
set mouse=a
set vb t_vb=
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
set modifiable
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set hidden
set splitright
set splitbelow
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
set laststatus=2
set statusline=
set statusline+=\ %l
set statusline+=/
set statusline+=%L
set statusline+=\ \ %t
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
