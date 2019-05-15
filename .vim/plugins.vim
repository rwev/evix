call plug#begin('~/.vim/plugged')

" Basic
Plug 'tpope/vim-sensible'

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
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

" Interface
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'nord' }
Plug 'nathanaelkane/vim-indent-guides'

Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

Plug 'jistr/vim-nerdtree-tabs'
Plug 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
if (executable('ag'))
        let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g '
endif
nnoremap <C-P> :Files<CR>

" Code running
" TODO install async runner plugin and write run functions


" Editing
Plug 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat " TODO install default formatters

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'

Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'

call plug#end()
