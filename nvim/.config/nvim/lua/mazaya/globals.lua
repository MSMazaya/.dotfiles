-- Leader

vim.g.mapleader = " "

-- Color schemes
vim.cmd("colorscheme nightfox")
vim.cmd("set guifont=Caskaydia\\ Cove\\ Nerd\\ Font:h8")

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

-- transparent
vim.g.transparent_enabled = true
