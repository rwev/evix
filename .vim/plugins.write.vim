call plug#begin('~/.vim/plugins')

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-markdown'

Plug 'reedes/vim-pencil' 
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

call plug#end()
