call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'bronson/vim-visual-star-search' " * search on visual selection

Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'

Plug 'wincent/scalpel' " <leader>e for changing all occurences
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons' " icons in nerd tree
Plug 'junegunn/goyo.vim' " <a-g> for zen mode
Plug 'justinmk/vim-sneak' " allow s searching
Plug 'mbbill/undotree'
Plug 'Jorengarenar/vim-MvVis' " move visual selections
Plug 'tpope/vim-fugitive' " git
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat' " press . to repeat plugins functions
Plug 'AndrewRadev/sideways.vim' " change order of function arguments or lst
Plug 'andymass/vim-matchup' " matching word
Plug 'haya14busa/incsearch.vim' " auto remove higlight
Plug 'osyo-manga/vim-anzu' " search index
Plug 'terryma/vim-multiple-cursors'

Plug 'sheerun/vim-polyglot' " better syntax

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Description: Enables auto-completion using artificial
" intelligence and server languages.
" GitHub: https://github.com/codota/tabnine-vim
Plug 'codota/tabnine-vim'

" Description: Provides a smooth scroll movement
" GitHub: https://github.com/psliwka/vim-smoothie
Plug 'psliwka/vim-smoothie'

" Description: Create commands to surround text
" GitHub: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

call plug#end()
