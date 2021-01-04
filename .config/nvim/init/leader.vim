" Leader (and other) Key Mappings


" Define leader key
nnoremap <SPACE> <Nop>
let mapleader = "\<space>"
let maplocalleader = "\<space>"


" Mappings for fzf
map <Leader>ff :Files<Return>
map <leader>fn :FZF<SPACE>

" Mappings for buffers
map <Leader>j :bprev<Return>
map <Leader>k :bnext<Return>

" Resize split easily 
map <C-w><C-Left> <C-w><lt>
map <C-w><C-Right> <C-w>>
map <C-w><C-Up> <C-w>-
map <C-w><C-Down> <C-w>+
