set directory^=$LOCALAPPDATA/nvim/tmp/undo//
set backupdir^=$LOCALAPPDATA/nvim/tmp/swap//
set directory^=$LOCALAPPDATA/nvim/tmp/swap//

set modifiable
set autoread

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

if has('persistent_undo')
    set undodir=$LOCALAPPDATA/nvim/tmp/undo/
    set undofile
endif
