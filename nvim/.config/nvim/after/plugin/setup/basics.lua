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
require 'mind'.setup()
require 'neoscroll'.setup()
require('neodev').setup()
require('flit').setup {
    keys = { f = 'f', F = 'F', t = 't', T = 'T' },
    -- A string like "nv", "nvo", "o", etc.
    labeled_modes = "nvi",
    multiline = true,
    -- Like `leap`s similar argument (call-specific overrides).
    -- E.g.: opts = { equivalence_classes = {} }
    opts = {}
}
