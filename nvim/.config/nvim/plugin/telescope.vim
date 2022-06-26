" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep({hidden=true})<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers({hidden=true,  sort_mru = true })<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags({hidden=true})<cr>

" This is actually coming from todo comments, but using telescope
nnoremap <leader>ft <cmd>TodoTelescope<cr>
