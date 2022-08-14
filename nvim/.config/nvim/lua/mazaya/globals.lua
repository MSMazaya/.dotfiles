-- Leader

vim.g.mapleader = ' '

-- Color schemes

vim.cmd("colorscheme nightfox")
vim.cmd("set guifont=FiraCode\\ NF:h8")
vim.g.neovide_transparency = 0.5

-- Autocompletion
vim.cmd("set completeopt=menu,menuone,noselect")

-- Yank copy
vim.cmd("set clipboard=unnamedplus")

-- Cursorline stuff
vim.cmd("autocmd InsertEnter * set nocursorline")
vim.cmd("autocmd InsertLeave * set cursorline")

-- uncomment for transparent bg:
vim.cmd("highlight Normal guibg=none")


-- tagalong files
vim.g.tagalong_additional_filetypes = { "tsx" }
