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
    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            'j-hui/fidget.nvim',

            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim',
        },
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
    use { -- Additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
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
    use 'kyazdani42/nvim-tree.lua'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'karb94/neoscroll.nvim'

    use {
        'ggandor/leap.nvim',
        'tpope/vim-repeat',
        'ggandor/flit.nvim',
    }

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    use 'ThePrimeagen/git-worktree.nvim'

    -- Autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Snip snip baby
    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    }

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
    use {
        'akinsho/flutter-tools.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    use {
        'tpope/vim-dadbod',
        'kristijanhusak/vim-dadbod-ui'
    }

    use {
        'phaazon/mind.nvim',
        branch = 'v2',
        requires = { 'nvim-lua/plenary.nvim' },
        configure = function()
            require 'mind'.setup()
        end
    }

    use 'sigmasd/deno-nvim'

    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            -- you'll need at least one of these
            -- {'nvim-telescope/telescope.nvim'},
            -- {'ibhagwan/fzf-lua'},
        },
        config = function()
            require('neoclip').setup()
        end,
    }

    use 'mbbill/undotree'

    use { 'ibhagwan/fzf-lua',
        -- optional for icon support
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

    use { 'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup {}
    end
    }

    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use 'nvim-telescope/telescope-dap.nvim'
    use 'theHamsta/nvim-dap-virtual-text'
    use "jay-babu/mason-nvim-dap.nvim"
    use 'mfussenegger/nvim-dap-python'
end)
