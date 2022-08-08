local nnoremap = require("mazaya.keymap").nnoremap

-- TODO: those should be silent tho
nnoremap("<leader>m", function()
    require("harpoon.mark").add_file()
end)

nnoremap("<leader>h", function()
    require("harpoon.ui").toggle_quick_menu()
end)
