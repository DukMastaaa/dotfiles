set autoindent
set ruler
set showcmd
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" NERDTree
Plug 'scrooloose/nerdtree'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Theme
" Plug 'gkapfham/vim-vitamin-onec'
Plug 'cocopon/iceberg.vim'
" UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" YouCompleteMe
" vimtex
" Plug 'lervag/vimtex'
call plug#end()

let g:python3_host_prog = 'C:\\Users\\JB\\AppData\\Local\\Programs\\Python\\Python37-32\\python.exe'

" deoplete
" let g:deoplete#enable_at_startup = 1  " start autocomplete 

" ycm
" set encoding=utf-8

" ultisnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="D:\\Programs\\Neovim\\share\\nvim\\UltiSnips"
let g:UltiSnipsSnippetDirectories=["D:\\Programs\\Neovim\\share\\nvim\\UltiSnips"]

" colorscheme
" colorscheme vitaminonec 
let g:airline_theme='iceberg'
colorscheme iceberg

" tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set list 

" Resize split easily 
:map <C-w><C-Left> <C-w><lt>
:map <C-w><C-Right> <C-w>>
:map <C-w><C-Up> <C-w>-
:map <C-w><C-Down> <C-w>+

:imap <C-BS> <Esc>dBxi

" Hybrid line numbers
:set number relativenumber

" automatically compile latex file thingy
function ChangeDirAndCompile()
    cd C:\\Users\\JB\\OneDrive\\Uni\\MATH1071\\CourseNotes
    silent! execute "!pdflatex main.tex -output-directory output"
endfunction

autocmd BufWritePost *.tex call ChangeDirAndCompile()
command ChangeDirAndCompile call ChangeDirAndCompile()

" default tex type
let g:tex_flavor = "latex"
