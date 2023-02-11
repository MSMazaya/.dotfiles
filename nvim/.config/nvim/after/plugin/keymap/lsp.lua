local nnoremap = require("mazaya.keymap").nnoremap

-- TODO: those should be silent tho
nnoremap("<leader>gd", ":Lspsaga lsp_finder<CR> ")
nnoremap("<leader>ca", ":Lspsaga code_action<CR>")
nnoremap("K", ":Lspsaga hover_doc<CR>")
nnoremap("<F2>", ":Lspsaga rename<CR>")
nnoremap("X", vim.diagnostic.open_float)
nnoremap("<leader>o", "<cmd>LSoutlineToggle<CR>")

FormatEnabled = true

vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("format_on_save", { clear = true }),
    callback = function()
        if FormatEnabled then
            vim.lsp.buf.format()
        end
    end,
})

vim.api.nvim_create_user_command("ToggleFormat", function()
    FormatEnabled = not FormatEnabled
    print("Format is enabled: ", FormatEnabled)
end, {})
