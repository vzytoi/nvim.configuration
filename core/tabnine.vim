" The *g:ycm_collect_identifiers_from_comments_and_strings* option
"
" When this option is set to '1', YCM's identifier completer will also collect
" identifiers from strings and comments. Otherwise, the text in comments and
" strings will be ignored.
"
" Default: '0'
" >
   let g:ycm_collect_identifiers_from_comments_and_strings = 1
" <

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
 let g:ycm_key_list_stop_completion = ['<C-y>']
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
