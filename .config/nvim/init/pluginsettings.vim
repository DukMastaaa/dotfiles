" Plugin-Specific Settings


" UltiSnips 
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
let g:tex_flavor = "latex"  " default tex type for UltiSnips

let g:UltiSnipsSnippetsDir = g:config_dir . "UltiSnips"
let g:UltiSnipsSnippetDirectories = [g:UltiSnipsSnippetsDir]


" VimTex
" Compiler
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : './output/',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
        \ '-verbose',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
        \ '-pdf',
        \ '-shell-escape'
    \ ],
\}

let g:vimtex_complete_enabled = 0
let g:vimtex_view_method = 'mupdf'
let g:vimtex_view_general_viewer = 'mupdf'

let g:vimtex_imaps_enabled = 0


" Airline
let g:airline#extensions#tabline#enabled = 1



" FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline']}, <bang>0)
