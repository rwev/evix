call plug#begin('~/.vim/plugins')

" Version Control Systems
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Syntax / Code Completion
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale' 
let g:ale_fixers = {
\       '*': ['remove_trailing_lines', 'trim_whitespace'],
\        'bash': ['shfmt'],
\        'javascript': ['eslint'],
\        'python': ['black'],
\        'rust': ['rustfmt']
\}

Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

Plug 'mbbill/undotree'
nnoremap <F9> :UndotreeToggle<cr>

" Code running
Plug 'skywind3000/asyncrun.vim'
nnoremap <F5> :call <SID>run()<CR>
function! s:run()
        exec 'w'
        if &filetype == 'sh'
                exec "AsyncRun! time bash %"
        elseif &filetype == 'python'
                exec "AsyncRun! time python %"
        endif
endfunction

" Editing
Plug 'Chiel92/vim-autoformat'
nnoremap <C-K> :ALEFix :Autoformat<CR>

Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/MatchTagAlways'

call plug#end()
