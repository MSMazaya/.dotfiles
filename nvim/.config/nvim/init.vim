set exrc
set relativenumber
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set incsearch
set termguicolors
set scrolloff=8

call plug#begin('~/.vim/plugged')

" Idk what is this, but its a prerequisite to another plugin
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" TS
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Navigation
Plug 'nvim-telescope/telescope.nvim'
Plug 'ThePrimeagen/harpoon'

" Colorscheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Editor Perks
Plug 'vim-airline/vim-airline'
Plug 'akinsho/toggleterm.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Autocompletion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

call plug#end()

" Basic global config
let mapleader = " "

" Color scheme
colorscheme tokyonight
highlight Normal guibg=none

" Source lua configs
lua require("mazaya")

" Basic remap
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <C-s> :w<CR>
nnoremap Y y$
nnoremap P op

" Text moving on visual
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Auto
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
