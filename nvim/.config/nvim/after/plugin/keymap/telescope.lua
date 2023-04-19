local nnoremap = require("mazaya.keymap").nnoremap

nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files({ hidden = true, theme = "dropdown" })
end)
nnoremap("<leader>fg", function()
    require('telescope.builtin').live_grep({ hidden = true })
end)
nnoremap("<leader>fb", function()
    require('telescope.builtin').buffers({ hidden = true, sort_mru = true })
end)
nnoremap("<leader>fh", function()
    require('telescope.builtin').help_tags({ hidden = true })
end)
nnoremap("<leader>fr", function()
    require('telescope.builtin').resume({ hidden = true })
end)

-- -- This is actually coming from todo comments, but using telescope
nnoremap("<leader>ft", "<cmd>TodoTelescope<cr>")
