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
let g:calendar_task=1
let g:calendar_cache_directory=expand('~/.calendar')
let g:calendar_views =[
 \ 'year', 'month', 'week', 'weekday',
 \ 'day_7', 'day_6', 'day_5', 'day_4',
 \ 'day_3', 'day_2', 'day_1', 'day',
 \ 'clock', 'event', 'agenda' 
 \ ]

let g:calendar_task_delete=1

call plug#end()
