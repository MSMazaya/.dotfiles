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
set colorcolumn=80

call plug#begin('~/.vim/plugged')

" Idk what is this, but its a prerequisite to another plugin
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Platformio
Plug 'normen/vim-pio'

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
Plug 'terrortylor/nvim-comment'
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'tpope/vim-fugitive'

" Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()


" Basic global config
let mapleader = " "

" Color scheme
colorscheme tokyonight

" uncomment for transparent bg:
" highlight Normal guibg=none

" Autocomplete
set completeopt=menu,menuone,noselect

" Source lua configs
lua require("mazaya")

" Basic remap
nnoremap <leader>h :noh<CR>
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

" Toggle Netrw Explore
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Explore
    endif
endfunction

noremap <silent> <leader>e :call ToggleNetrw()<CR>

" Auto
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
