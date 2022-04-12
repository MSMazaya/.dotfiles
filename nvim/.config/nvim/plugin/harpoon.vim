" Harpoon
nnoremap <silent><leader>m :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-h> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>b :lua require("harpoon.ui").nav_file(vim.fn.input("Grep For > "))<CR>
