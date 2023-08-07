if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  "Plug 'hrsh7th/cmp-nvim-lsp'
  "Plug 'hrsh7th/cmp-buffer'
  "Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-lua/completion-nvim'
  "Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
  "Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'arnaud-lb/vim-php-namespace'
  Plug 'neomake/neomake'
  Plug 'jwalton512/vim-blade'
  Plug 'scrooloose/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'preservim/nerdcommenter'
  Plug 'andymass/vim-matchup'
  Plug 'tpope/vim-surround'
  Plug 'yaegassy/coc-blade', {'do': 'yarn install --frozen-lockfile'}
  Plug 'whatyouhide/vim-gotham'
  Plug 'sainnhe/gruvbox-material'
  Plug 'christoomey/vim-tmux-navigator'
  "Plug 'kevinhwang91/nvim-ufo'
  "Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  
endif

Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()

