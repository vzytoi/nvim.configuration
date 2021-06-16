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
