let g:vim_home = get(g:, 'vim_home', expand('~/.vim/'))
let config_list = [ 'config.vim', 'mappings.vim', ] " plugins.vim
for files in config_list
        for f in glob(g:vim_home.files, 1, 1)
                exec 'source' f
        endfor
endfor
