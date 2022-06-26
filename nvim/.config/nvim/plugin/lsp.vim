" LSP
nnoremap <leader>E <cmd>lua vim.diagnostic.open_float()<CR>

augroup format_on_save
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()
augroup END

" LSP Saga
nnoremap <silent> <leader>gd :Lspsaga lsp_finder<CR>
nnoremap <silent> <leader>ca :Lspsaga code_action<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent><F2> :Lspsaga rename<CR>
nnoremap <silent>L :Lspsaga show_line_diagnostics<CR>``lua
