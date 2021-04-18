" General Neovim Settings


set autoindent
set ruler
set showcmd
syntax on
filetype plugin indent on


" Provide python path
if has('win32')
    let g:python3_host_prog = 'C:\\Users\\JB\\AppData\\Local\\Programs\\Python\\Python37-32\\python.exe'
else
    let g:python3_host_prog = '/usr/bin/python3'
endif


" colorscheme
let g:airline_theme='iceberg'
colorscheme iceberg


" GUI customisation for Neovide 
let g:neovide_fullscreen=v:true
set guifont=Consolas:h22
let g:neovide_cursor_animation_length=0.13


" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set list 


" Hybrid line numbers
:set number relativenumber

" Show context lines above and below cursor
:set scrolloff=5

" Mouse support
:set mouse=a
