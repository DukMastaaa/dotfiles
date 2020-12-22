" Plugin-Specific Settings


" UltiSnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["~/.config/nvim/UltiSnips"]
let g:tex_flavor = "latex"  " default tex type for UltiSnips


" VimTex
" Compiler
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
        \ '-verbose',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
        \ '-pdf'
    \ ],
\}

let g:vimtex_complete_enabled = 0
let g:vimtex_syntax_enabled = 0
