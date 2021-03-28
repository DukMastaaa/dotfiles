" Leader (and other) Key Mappings


" Define leader key
nnoremap <SPACE> <Nop>
let mapleader = "\<space>"
let maplocalleader = "\<space>"

" Mappings for fzf
map <Leader>ff :FZF<Return>
map <Leader>fn :FZF<SPACE>
map <Leader>fc :execute printf("Files %s", g:config_dir)<Return>
" map <Leader>fc call fzf#vim#files(g:config_dir)<Return> 

" Mappings for Neovide-specific things
map <Leader>vf :let g:neovide_fullscreen=v:true<Return>
map <Leader>vF :let g:neovide_fullscreen=v:false<Return>
" just to refresh things while graphical glitches still exist
map <Leader>vr :set guifont=Consolas:h22<Return>

" Mappings for yank/paste
map <Leader>p "+p<Return>
map <Leader>y "+y

" Mappings for buffers
map <Leader>j :bprev<Return>
map <Leader>k :bnext<Return>

" Resize split easily 
map <C-w><C-Left> <C-w><lt>
map <C-w><C-Right> <C-w>>
map <C-w><C-Up> <C-w>-
map <C-w><C-Down> <C-w>+

" change directory

map <Leader>cp :cd %:p:h<Return>
map <Leader>cd :cd D:\<Return>
map <Leader>cc :cd C:\<Return>
map <Leader>co :execute printf("cd %s", $HOME . "\\OneDrive")<Return>
 

" control backspace to delete words in insert mode
:imap <C-BS> <Esc>dBxi

