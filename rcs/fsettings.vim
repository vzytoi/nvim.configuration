set directory^=$CONFIG_PATH/tmp/undo//
set backupdir^=$CONFIG_PATH/tmp/swap//
set directory^=$CONFIG_PATH/tmp/swap//

set modifiable
set autoread

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

if has('persistent_undo')
    set undodir=$CONFIG_PATH/tmp/undo/
    set undofile
endif
