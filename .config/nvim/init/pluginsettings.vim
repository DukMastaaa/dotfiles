" Plugin-Specific Settings





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
"let g:vimtex_view_method = 'mupdf'
"let g:vimtex_view_general_viewer = 'mupdf'

let g:vimtex_imaps_enabled = 0


" Airline
let g:airline#extensions#tabline#enabled = 1



" FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline']}, <bang>0)

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = false,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 2000, -- Do not enable for files with more than 2000 lines, int
    colors = {
      "#FFD700", "#DA70D6", "#87CEFA", "#FA8072", "#7CFC00", "#FF8C00"
    },
  }
}
EOF

" UltiSnips 
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"
let g:tex_flavor = "latex"  " default tex type for UltiSnips

let g:UltiSnipsSnippetsDir = g:config_dir . "UltiSnips"
let g:UltiSnipsSnippetDirectories = [g:UltiSnipsSnippetsDir]

lua mathmodecheck = require('mathmodecheck')  -- see .config/nvim/lua/mathmodecheck.lua

" nvim-autopairs
lua <<EOF
local npairs = require("nvim-autopairs")
npairs.setup({
    check_ts = true
})

require('nvim-treesitter.configs').setup {
    autopairs = {enable = true}
}

local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

npairs.remove_rule('[')
npairs.add_rules(
    {
        Rule("[", "]", {"tex", "latex"})
        :with_pair(cond.not_before_text_check("\\"))
        :with_pair(cond.not_before_text_check("\\["))
    }
)
EOF
