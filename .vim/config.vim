colorscheme nord

filetype plugin indent on
syntax enable

set number

set showcmd
set cursorline

set title
set hidden
set matchtime=5

set visualbell
set noerrorbells
set updatetime=1000

set wildmenu
set wildcharm=<C-Z>
set wildmenu wildmode=list:longest,full
set wildignorecase
set wildignore+=*.swp,*.bak,*.pyc,*.class,*.o,*.obj,tags

set lazyredraw

set showmatch
set incsearch
set hlsearch

set splitbelow
set splitright

set autoread

set confirm

set ignorecase
set infercase
set smartcase

set exrc

set noswapfile
set backup backupdir=~/.vim/backup
if !isdirectory(expand(&backupdir))
        call mkdir(expand(&backupdir), 'p')
endif

set undofile
set undolevels=1000
set undodir=~/.vim/undo
if !isdirectory(expand(&undodir))
        call mkdir(expand(&undodir), 'p')
endif

set spelllang=en_us
set spellsuggest=best,5

set conceallevel=1
set breakindent
set smarttab
set expandtab
set nojoinspaces

set nostartofline
set fileformat=unix
set virtualedit=block
set formatoptions+=tcroqnjl21
set textwidth=80
set colorcolumn=+1
set showtabline=2

set mousehide
set mouse=a

set foldopen=hor,insert,jump,mark,percent,quickfix,search,tag,undo
set foldenable
set foldmethod=syntax
set foldlevelstart=1

