call plug#begin('~/.vim/plugged')

" Version Control Systems
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Syntax / Code Completion
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale' " TODO fixers
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

" Interface
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/nerdtree'
let g:NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore=['\.pyc$', '\~$']
nnoremap <F7> :NERDTreeToggle<CR>

Plug 'majutsushi/tagbar'
let g:tagbar_sort = 0
let g:tagbar_indent = 0
let g:tagbar_compact = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
nnoremap <F8> :TagbarToggle<CR>

Plug 'jistr/vim-nerdtree-tabs'
Plug 'mbbill/undotree'
nnoremap <F9> :UndotreeToggle<cr>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
if (executable('ag'))
        let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif
nnoremap <C-P> :Files<CR>
nnoremap <C-M> :Tags<CR>
nnoremap <C-N> :Ag<CR>

" Code running
Plug 'skywind3000/asyncrun.vim'
nnoremap <F5> :call <SID>run()<CR>
function! s:run()
        exec 'w'
        if &filetype == 'sh'
                exec "AsyncRun! time bash %"
        elseif &filetype == 'python'
                exec "AsyncRun!
                time python %"
        endif
endfunction


" Editing
Plug 'Chiel92/vim-autoformat'
nnoremap <C-l> :Autoformat<CR>
au BufWrite * :Autoformat

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'

Plug 'shime/vim-livedown'

Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'

call plug#end()
