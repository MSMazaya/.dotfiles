local nnoremap = require('mazaya.keymap').nnoremap

nnoremap('<leader>e', function()
    vim.api.nvim_command(':NvimTreeFindFileToggle')
end)
