local nnoremap = require("mazaya.keymap").nnoremap
local vnoremap = require("mazaya.keymap").vnoremap

nnoremap("<leader>/", ":CommentToggle<CR>")
vnoremap("<leader>/", ":'<,'>CommentToggle<CR>")
