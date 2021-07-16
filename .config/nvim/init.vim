" Main $MYVIMRC file

if has('win32')
    let g:config_dir = "D:\\GitHub\\dotfiles\\.config\\nvim\\"
    let g:pathSep = "\\"
else
    let g:config_dir = "~/.config/nvim/"
    let g:pathSep = "/"
endif

exec 'set runtimepath+=' . g:config_dir


for filename in ["plug.vim", "general.vim", "leader.vim", "pluginsettings.vim"]
    exec printf('source %s%sinit%s%s', g:config_dir, g:pathSep, g:pathSep, filename)
endfor
