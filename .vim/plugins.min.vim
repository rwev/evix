call plug#begin('~/.vim/plugins')

" Interface
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

let g:airline_theme='nord'
let g:airline_powerline_fonts=1
let g:airline_statusline_ontop=1

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

nnoremap <C-N> :GFiles<CR>
nnoremap <C-P> :Rg<CR>

Plug 'reedes/vim-pencil' " TODO check out other writing plugins from reedes

Plug 'farmergreg/vim-lastplace'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'

Plug 'godlygeek/tabular'

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/calendar.vim'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()
