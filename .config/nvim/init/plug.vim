" Vim-Plug setup


call plug#begin(stdpath('data') . '/plugged')

" NERDTree
Plug 'scrooloose/nerdtree'

" Airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'hoob3rt/lualine.nvim'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'akinsho/nvim-bufferline.lua'

" Theme
"Plug 'cocopon/iceberg.vim'
"Plug 'projekt0n/github-nvim-theme'
Plug 'folke/tokyonight.nvim'

" UltiSnips
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" vimtex
Plug 'lervag/vimtex'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" startify
Plug 'mhinz/vim-startify'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'p00f/nvim-ts-rainbow'

Plug 'b3nj5m1n/kommentary'

call plug#end()

