-- My customs
require('mazaya.set')
require('mazaya.globals')
require('mazaya.packer')
require('mazaya.command')

require('mazaya.lsp')
require('mazaya.symbol_outline')
require('mazaya.nvim-tree')
require('mazaya.tree-sitter')


-- Basic Setup
require('nvim-surround').setup()
require('nvim_comment').setup()
require('trouble').setup()
require('todo-comments').setup()
require('toggleterm').setup()
require('lspsaga').init_lsp_saga()
require('feline').setup()
require('gitsigns').setup()
require("transparent").setup({
    enable = true,
})
