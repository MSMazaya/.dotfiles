-- Basic Setup
require("flutter-tools").setup {}
require('nvim-surround').setup()
require('nvim_comment').setup()
require('trouble').setup()
require('todo-comments').setup()
require('toggleterm').setup()
require('feline').setup()
require('gitsigns').setup()
require("transparent").setup()
require('mind').setup()
require('neoscroll').setup()
require('flutter-tools').setup {}
require('neodev').setup()
require('flit').setup {
    keys = { f = 'f', F = 'F', t = 't', T = 'T' },
    -- A string like "nv", "nvo", "o", etc.
    labeled_modes = "nvo",
    multiline = false,
    -- Like `leap`s similar argument (call-specific overrides).
    -- E.g.: opts = { equivalence_classes = {} }
    opts = {}
}
require("mini.indentscope").setup {
    symbol = "│",
    options = { try_as_border = true },
}
require('tabnine').setup({
    disable_auto_comment = true,
    accept_keymap = "<Tab>",
    dismiss_keymap = "<C-]>",
    debounce_ms = 500,
    suggestion_color = { gui = "#808080", cterm = 244 },
    exclude_filetypes = { "TelescopePrompt" }
})
