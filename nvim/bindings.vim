let mapleader=','

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Nerdtree
noremap <C-t> :NERDTreeToggle<CR>
noremap <leader>t :NERDTreeToggle<CR>

" yank and put from clipboard instead. Far more useful for me
noremap <leader>y "+y
noremap <leader>p "+p

" PHPActor
" Move class
noremap <leader>rmf :PhpactorMoveFile

" Coc bindings
nmap <leader>rn <Plug>(coc-rename)
nmap <silent>gh :call CocAction('doHover')<cr>

" keep searches centered
nnoremap n nzzzv
nnoremap N Nzzzv

" Edit config from wherever
nnoremap <leader>ec <cmd>vsplit ~/.config/nvim/<cr>

" Jump through error list
nnoremap <leader>j :call CocAction('diagnosticNext')<cr>
nnoremap <leader>k :call CocAction('diagnosticPrevious')<cr>

" Harpooning!
nnoremap <leader>ma <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>mm <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>] <cmd>lua require("harpoon.ui").nav_next()<cr>
nnoremap <leader>[ <cmd>lua require("harpoon.ui").nav_prev()<cr>

" Terminal
let g:floaterm_keymap_new = '<leader>ft'
