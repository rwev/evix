call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
map <silent> <C-n> :NERDTreeToggle<CR>

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
if (executable('ag'))       
	let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
endif
nnoremap <C-P> :Files<CR>

Plug 'mattn/emmet-vim'
autocmd FileType html,css EmmetInstall

Plug 'w0rp/ale'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
let ycm_trigger_key = '<C-n>'
let g:ycm_auto_trigger = 0
let g:ycm_key_invoke_completion = ycm_trigger_key
let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']

inoremap <expr> ycm_trigger_key pumvisible() ? "<C-j>" : ycm_trigger_key;

call plug#end()
