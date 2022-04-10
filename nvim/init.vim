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

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'akinsho/toggleterm.nvim'

call plug#end()

" Basic global config
let mapleader = " "

" Color scheme
colorscheme tokyonight
highlight Normal guibg=none

" ToggleTerm
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>

" Git
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gk :diffget //2<CR>
nnoremap <leader>gs :G<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Harpoon
nnoremap <silent><leader>m :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-h> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>b :lua require("harpoon.ui").nav_file(vim.fn.input("Grep For > "))<CR>

" Basic remap
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <C-s> :w<CR>
nnoremap Y y$
nnoremap P op

" Expore remap
nnoremap <silent> <leader>a :!touch <c-r><c-p><cr><cr>

" Text moving on visual
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Auto
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
