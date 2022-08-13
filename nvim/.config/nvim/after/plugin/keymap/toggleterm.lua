local nnoremap = require("mazaya.keymap").nnoremap
local inoremap = require("mazaya.keymap").inoremap

nnoremap("<leader>gj", ":ToggleTerm //3<CR>")
nnoremap("<leader>gk", ":diffget //2<CR>")

vim.cmd [[
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm direction=tab"<CR>
]]

nnoremap("<c-t>", "<Cmd>exe v:count1 . \"ToggleTerm direction=tab\" <CR>")
inoremap("<c-t>", "<Esc><Cmd>exe v:count1 . \"ToggleTerm direction=tab\"<CR>")
