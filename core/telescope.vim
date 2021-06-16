nnoremap <silent> <a-s-e> :Telescope git_files<cr>
nnoremap <silent> <a-s-s> :Telescope live_grep<cr>
nnoremap <silent> <a-s-c> :Telescope git_commits<cr>

nnoremap <silent> <leader>rc :Telescope find_files cwd=~/AppData/Local/nvim/<cr>

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
require('telescope').load_extension('coc')
EOF
