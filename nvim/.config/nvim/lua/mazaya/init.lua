function CreateNoremap(type, opts)
    return function(lhs, rhs, bufnr)
        bufnr = bufnr or 0
        vim.api.nvim_buf_set_keymap(bufnr, type, lhs, rhs, opts)
    end
end

Nnoremap = CreateNoremap("n", { noremap = true })

require('mazaya.lsp')
require('mazaya.symbol_outline')
require('mazaya.nvim-tree')

-- Basic Setup
require('nvim_comment').setup()
require('trouble').setup()
require('todo-comments').setup()
require('toggleterm').setup()
require('lspsaga').init_lsp_saga()
require('feline').setup()
require('gitsigns').setup()
