" General Neovim Settings


set autoindent
set ruler
set showcmd
syntax on
filetype plugin indent on

let g:python3_host_prog = '/usr/bin/python3'   " Provide python path


" colorscheme
let g:airline_theme='iceberg'
colorscheme iceberg


" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set list 


" Hybrid line numbers
:set number relativenumber
