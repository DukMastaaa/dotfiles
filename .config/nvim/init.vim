" Main $MYVIMRC file

if has('win32')
    let g:config_dir = "D:\\GitHub\\dotfiles\\.config\\nvim\\"
    let initString = "init\\"
else
    let g:config_dir = "~/.config/nvim/"
    let initString = "init/"
endif


for filename in ["plug.vim", "general.vim", "leader.vim", "pluginsettings.vim"]
    exec printf('source %s%s%s', g:config_dir, initString, filename)
endfor