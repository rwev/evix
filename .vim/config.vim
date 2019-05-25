try
        colorscheme nord
catch
endtry

filetype plugin indent on
syntax enable

set number

set laststatus=2
set showcmd
set cursorline

set mousehide
set mouse=a

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

set ttyfast
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
set nobackup
set nowb
set noswapfile

set undofile
set undolevels=1000
set undodir=~/.vim/undo
if !isdirectory(expand(&undodir))
        call mkdir(expand(&undodir), 'p')
endif

set spelllang=en_us
set spellsuggest=best,5

set conceallevel=1

set autoindent
set smartindent
set breakindent

set smarttab
set expandtab
set nojoinspaces

set linebreak
set listchars=eol:¬,space:·,tab:»\

set wrap
set whichwrap+=<,>,h,l,[,]

set nostartofline
set ffs=unix,dos,mac
set virtualedit=block " TODO what "
set formatoptions+=tcroqnjl21 " TODO what "
set textwidth=80
set colorcolumn=+1
set showtabline=2

set foldopen=hor,insert,jump,mark,percent,quickfix,search,tag,undo
set foldenable
set foldmethod=syntax
set foldlevelstart=1

let $LANG='en'
set langmenu=en

set encoding=utf8
set fileencoding=utf-8

" TODO what
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

