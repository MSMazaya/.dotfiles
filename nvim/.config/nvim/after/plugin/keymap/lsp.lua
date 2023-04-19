local nnoremap = require("mazaya.keymap").nnoremap

-- TODO: those should be silent tho
nnoremap("<leader>ca", vim.lsp.buf.code_action)
nnoremap("<F2>", vim.lsp.buf.rename)
nnoremap("X", vim.diagnostic.open_float)
nnoremap("<leader>o", "<cmd>LSoutlineToggle<CR>")

FormatEnabled = true
VirtualTextEnabled = true

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

vim.api.nvim_create_user_command("ToggleVirtualText", function()
    VirtualTextEnabled = not VirtualTextEnabled
    print("VirtualText is enabled: ", VirtualTextEnabled)
end, {})

nnoremap('<leader>rn', vim.lsp.buf.rename)
nnoremap('<leader>ca', vim.lsp.buf.code_action)

nnoremap('gd', vim.lsp.buf.definition)
nnoremap('gr', require('telescope.builtin').lsp_references)
nnoremap('gI', vim.lsp.buf.implementation)
nnoremap('<leader>D', vim.lsp.buf.type_definition)
nnoremap('<leader>ds', require('telescope.builtin').lsp_document_symbols)
nnoremap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)

-- See `:help K` for why this keymap
nnoremap('K', vim.lsp.buf.hover)
nnoremap('<C-k>', vim.lsp.buf.signature_help)

-- Lesser used LSP functionality
nnoremap('gD', vim.lsp.buf.declaration)
nnoremap('<leader>wa', vim.lsp.buf.add_workspace_folder)
nnoremap('<leader>wr', vim.lsp.buf.remove_workspace_folder)
nnoremap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end)

-- DAP
local dap = require('dap')
nnoremap('<leader>b', dap.toggle_breakpoint)
