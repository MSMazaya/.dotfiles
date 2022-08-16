local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
        install_path })
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Idk what is this, but its a prerequisite to another plugin
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- LSP Saga
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })


    -- Platformio
    use 'normen/vim-pio'

    -- TS
    use {
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/nvim-treesitter-context',
        run = ':TSUpdate'
    }

    -- Navigation
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'

    -- Colorscheme
    -- use 'folke/tokyonight.nvim', { 'branch': 'main' }
    -- use 'projekt0n/github-nvim-theme'
    use 'EdenEast/nightfox.nvim'

    -- Editor Perks
    -- use 'vim-airline/vim-airline'
    -- use 'vim-airline/vim-airline-themes'
    use 'kylechui/nvim-surround'
    use({
        "feline-nvim/feline.nvim",
        branch = "0.5-compat",
    })

    use 'terrortylor/nvim-comment'
    use 'cohama/lexima.vim'
    use 'kyazdani42/nvim-tree.lua'

    -- Git
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Snip snip baby
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Diagnostics
    use 'kyazdani42/nvim-web-devicons'
    use 'folke/trouble.nvim'

    -- Todo Tree
    use 'folke/todo-comments.nvim'

    -- ROS
    use 'MSMazaya/ros-nvim'

    -- Cmake
    use 'cdelledonne/vim-cmake'
    use 'antoinemadec/FixCursorHold.nvim'

    -- Copilot
    use 'github/copilot.vim'

    -- Svelte
    use 'othree/html5.vim'
    use 'pangloss/vim-javascript'

    use({
        "evanleck/vim-svelte",
        branch = "main",
    })

    use {
        "akinsho/toggleterm.nvim",
        tag = 'v2.*'
    }

    -- Emmet
    use 'mattn/emmet-vim'

    -- Symbol outline
    use 'simrat39/symbols-outline.nvim'

    -- Navigation
    -- use 'kevinhwang91/rnvimr'

    -- Transparent background
    use 'xiyaowong/nvim-transparent'

    -- Tab style
    use {
        'romgrk/barbar.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    -- Latex
    use 'lervag/vimtex'

    -- Auto tag
    use "AndrewRadev/tagalong.vim"

    -- Flutter
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
end)
