local nnoremap = require('mazaya.keymap').nnoremap
local vnoremap = require('mazaya.keymap').vnoremap

-- Save ctrl s
nnoremap("<C-s>", ":w<CR>")

-- Y behave like D
nnoremap("Y", "y$")

-- P paste bottom of the selected
nnoremap("P", "'>p'<")

-- Visual indent keep on visual mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Text moving on visual
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Tab navigation
nnoremap("H", ":tabprevious<CR>")
nnoremap("L", ":tabnext<CR>")


-- Panes navigation
nnoremap("<c-k>", ":wincmd k<CR>")
nnoremap("<c-j>", ":wincmd j<CR>")
nnoremap("<c-h>", ":wincmd h<CR>")
nnoremap("<c-l>", ":wincmd l<CR>")

-- Buffer navigation
nnoremap("<leader>bb", "<c-^>")

nnoremap("<c-t>", ":tabnew | term<CR>")

-- No idea how to tnoremap without :
vim.cmd(":tnoremap H <C-\\><C-n>:tabprevious<CR>")
vim.cmd(":tnoremap L <C-\\><C-n>:tabnext<CR>")

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    callback = function()
        require 'vim.highlight'.on_yank({ timeout = 40 })
    end,
})

-- Uncomment below if cursorline is not working
-- vim.api.nvim_create_autocmd("BufEnter", {
--     group = vim.api.nvim_create_augroup("cursorline_buffer", { clear = true }),
--     callback = function()
--         vim.api.nvim_command("set cursorline");
--     end,
-- })
