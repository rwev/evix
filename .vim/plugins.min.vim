call plug#begin('~/.vim/plugins')

" Interface
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

let g:airline_theme='nord'
let g:airline_powerline_fonts=1
let g:airline_statusline_ontop=1

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

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

nnoremap <C-N> :GFiles<CR>
nnoremap <C-P> :Rg<CR>

Plug 'farmergreg/vim-lastplace'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'

Plug 'jiangmiao/auto-pairs'

call plug#end()
