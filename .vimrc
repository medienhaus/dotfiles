" disable swap file for crontab filetype
if has("autocmd")
  autocmd filetype crontab setlocal nobackup nowritebackup
endif

" enable filetype plugin and load indentation rules
if has("autocmd")
  filetype plugin indent on
endif

" enable syntax highlighting
if has("syntax")
  syntax on
endif

" colorscheme
colorscheme untitled

"set autowrite

set backspace=indent,eol,start

set breakindent

if has("unnamedplus")
  set clipboard=unnamedplus
endif

"set colorcolumn=80

set completeopt=menu,menuone,noselect

"set conceallevel=3

set confirm

set cursorcolumn
set cursorline

"if v:version > 900
"  set diffopt+=linematch:60
"endif

set expandtab

set nofoldenable
set foldmethod=indent

set formatoptions=tcroqnljp

set guicursor=""

"set hlsearch

set ignorecase

set incsearch

set laststatus=2

set list
set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<,nbsp:_

"set mouse=a

set number
set relativenumber

"set ruler

set scrolloff=4

"set sessionoptions=buffers,curdir,tabpages,winsize

set shiftround
set shiftwidth=2

"set shortmess+=WIcC
set shortmess+=WIc
if v:version > 900
  set shortmess+=C
endif

"set noshowcmd
set showmatch

set sidescroll=1
set sidescrolloff=8

set signcolumn=yes

set smartcase
set smartindent
set smarttab

set softtabstop=2

"set spelllang=en,de

set splitbelow
set splitright

if has("splitkeep")
  set splitkeep=screen
endif

"set noswapfile

set tabstop=2

set timeoutlen=300

if has("persistent_undo")
  set undodir=~/.vim/undodir
  set undofile
endif

set updatetime=100

set viminfo=""

set wildmenu
set wildmode=longest:full,full
set wildoptions="pum,tagfile"

set winminwidth=5

set nowrap

let mapleader = " "

let g:netrw_banner = 0
let g:netrw_bufsettings = "noma nomod nu nowrap ro nobl rnu"
"let g:netrw_dirhistmax = 0
"let g:netrw_localcopydircmd="cp -r"
"let g:netrw_keepdir = 0
"let g:netrw_winsize = 30
