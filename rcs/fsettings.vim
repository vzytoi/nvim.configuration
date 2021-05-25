set directory^=$HOME/Appdata/Local/nvim/undo//
set backupdir^=$HOME/Appdata/Local/nvim/swap//
set directory^=$HOME/Appdata/Local/nvim/swap//

set modifiable
set autoread

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

if has('persistent_undo')
    set undodir=$HOME/AppData/Local/nvim/undo
    set undofile
endif
