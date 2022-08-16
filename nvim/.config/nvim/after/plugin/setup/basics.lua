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
require("flutter-tools").setup {}
