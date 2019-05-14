call plug#begin('~/.vim/plugged')

" Basic keybindings
Plug 'tpope/vim-sensible'

" Version Control Systems
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
let g:gitgutter_max_signs = 250

Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Syntax / Code Completion
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
let ycm_trigger_key = '<C-n>'
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = ycm_trigger_key
let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap <expr> ycm_trigger_key pumvisible() ? "<C-j>" : ycm_trigger_key;

" Interface
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline' " TODO
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'
let g:airline_theme='minimalist'

Plug 'majutsushi/tagbar' " sudo apt-get install exuberant-ctags
nmap <F8> :TagbarToggle<CR>

Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

Plug 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
if (executable('ag'))
	let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif
nnoremap <C-P> :Files<CR>

" Code running

" Editing
Plug 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
autocmd FileType html,css EmmetInstall

Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/MatchTagAlways'


call plug#end()
