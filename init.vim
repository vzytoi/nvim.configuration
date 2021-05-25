filetype indent plugin on
"* COLORSCHEME *"
syntax on
syntax enable
let mapleader = " "

colorscheme sitruuna
set background=dark
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=gray guibg=NONE
"* ========== *"

runtime! rcs/filenav/buffers.vim
runtime! rcs/filenav/splits.vim
runtime! rcs/filenav/tabs.vim
runtime! rcs/filenav/ctrlp.vim

runtime! rcs/workflow/indents.vim
runtime! rcs/workflow/linesopp.vim

runtime! rcs/fsettings.vim
runtime! rcs/hardmode.vim
runtime! rcs/plugins.vim
runtime! rcs/randomshit.vim
runtime! rcs/startify.vim

runtime! rcs/filenav/trees.vim

runtime! rcs/search.vim
