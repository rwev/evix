call plug#begin('~/.vim/plugins')

""" MIN """

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

nnoremap <C-N> :Files<CR>
nnoremap <C-P> :Ag<CR>

Plug 'farmergreg/vim-lastplace'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'godlygeek/tabular'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/calendar.vim'
let g:calendar_calendar='us'
let g:calendar_locale='en'
let g:calendar_first_day='sunday'
let g:calendar_date_endian='big' " YYYY/MM/DD
let g:calendar_date_separator='/'
let g:calendar_cyclic_view=1
let g:calendar_views =[
 \ 'year', 'month', 'week', 'weekday',
 \ 'day_7', 'day_6', 'day_5', 'day_4',
 \ 'day_3', 'day_2', 'day_1', 'day',
 \ 'clock', 'event', 'agenda' 
 \ ]

let g:calendar_cache_directory=expand('~/.calendar')

Plug 'junegunn/goyo.vim'

""" WRITE """

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-markdown'

Plug 'reedes/vim-pencil'
let g:pencil#wrapModeDefault = 'soft'

Plug 'reedes/vim-wordy'
Plug 'reedes/vim-lexical' " TODO thesaurus, dictionary
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,text,txt,notes call pencil#init()
                            \ | call lexical#init()
                            \ | call litecorrect#init()
"                            \ | call textobj#quote#init()
"                            \ | call textobj#sentence#init()
augroup END

Plug 'tommcdo/vim-exchange'

Plug 'junegunn/limelight.vim'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
let g:notes_directories=[expand('~/.notes')]
" let g:notes_suffix='.md'

""" CODE """

" Version Control Systems
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Interface
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

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

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

Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/MatchTagAlways'

call plug#end()
