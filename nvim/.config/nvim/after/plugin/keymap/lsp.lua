local nnoremap = require("mazaya.keymap").nnoremap

-- TODO: those should be silent tho
nnoremap("<leader>gd", ":Lspsaga lsp_finder<CR> ")
nnoremap("<leader>ca", ":Lspsaga code_action<CR>")
nnoremap("K", ":Lspsaga hover_doc<CR>")
nnoremap("<F2>", ":Lspsaga rename<CR>")
nnoremap("<leader>E", vim.diagnostic.open_float)

vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("format_on_save", { clear = true }),
    callback = function()
        vim.lsp.buf.formatting_sync()
    end,
})
