" LSP
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>E <cmd>lua vim.diagnostic.open_float()<CR>
