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
set signcolumn=yes
set nohlsearch
set cursorline

call plug#begin('~/.vim/plugged')

" Idk what is this, but its a prerequisite to another plugin
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" LSP Saga
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

" Platformio
Plug 'normen/vim-pio'

" TS
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Navigation
Plug 'nvim-telescope/telescope.nvim'
" Plug 'ThePrimeagen/harpoon'

" Colorscheme
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'projekt0n/github-nvim-theme'
Plug 'EdenEast/nightfox.nvim' 

" Editor Perks
" Plug 'vim-airline/vim-airline' 
" Plug 'vim-airline/vim-airline-themes'
Plug 'kylechui/nvim-surround'
Plug 'feline-nvim/feline.nvim', { 'branch': '0.5-compat' }
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'terrortylor/nvim-comment'
Plug 'cohama/lexima.vim'
Plug 'kyazdani42/nvim-tree.lua'

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Diagnostics
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

" Todo Tree
Plug 'folke/todo-comments.nvim'

" ROS
Plug 'MSMazaya/ros-nvim'

" Cmake
Plug 'cdelledonne/vim-cmake'
Plug 'antoinemadec/FixCursorHold.nvim'

" Copilot
Plug 'github/copilot.vim'

" Svelte
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Emmet
Plug 'mattn/emmet-vim'

" Symbol outline
Plug 'simrat39/symbols-outline.nvim'

" Navigation
" Plug 'kevinhwang91/rnvimr'

call plug#end() 

" Basic global config
let mapleader = " "

" Color scheme
colorscheme nightfox
let g:airline_theme='google_dark'
set termguicolors

" uncomment for transparent bg:
" highlight Normal guibg=none

" Autocompletion
set completeopt=menu,menuone,noselect

" Yank copy
set clipboard=unnamedplus

" Source lua configs
lua require("mazaya")

" Basic remap
nnoremap <C-s> :w<CR>
nnoremap Y y$
nnoremap P op

" Text moving on visual
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Visual indent remap (keep on visual after indentation)
vnoremap < <gv
vnoremap > >gv

" Switch buffer remap
nnoremap <leader>bb <c-^>

" Navigation of panes
noremap <c-k> :wincmd k<CR>
noremap <c-j> :wincmd j<CR>
noremap <c-h> :wincmd h<CR>
noremap <c-l> :wincmd l<CR>

" Paste below last yanked line
nnoremap P '>p'<

" Auto
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" TODO: Make all plugins to describe functionality rather than "what plugin is it"
