" -*- vim: set sts=2 sw=2 et fdm=marker: -------------  vim modeline -*-

" Basic Settings -------------------------------------- {{{1
syntax enable
syntax on
let g:mapleader = " "

set nocompatible
set shiftwidth=2
set tabstop=2
set sw=2 sts=2 et nu sr



set diffopt=filler,context:3
set display=lastline
set hidden
" highlight search
set hlsearch
" increamental search
set incsearch

set nrformats=hex
set relativenumber
set ruler
set showcmd
set isfname-==
set shortmess+=s
set tags=./tags,tags,./../tags,./../../tags,./../../../tags
set title
set whichwrap=b,s,[,]
set wildcharm=<tab>
set wildmenu
set wildmode=list:longest,list:full
set wildignore=*.o,*.bak,*.byte,*.native,*~,*.sw?,*.aux,*.toc,*.hg,*.git,*.svn,*.hi,*.so,*.a,*.pyc,*.aux,*.toc,*.exe,*.cm?,*.zi,*.zo
set autochdir
set winaltkeys=no
set scrolloff=3 scrolljump=5
set showbreak=↪
set breakindent
set sidescroll=10 sidescrolloff=10
set switchbuf=useopen
"set ignorecase smartcase
set timeoutlen=600
set ttimeoutlen=0
set matchpairs=(:),[:],{:},<:>,':',":"
set laststatus=2
set cursorline
set nobackup
set noswapfile
set paste
"set linespace=10
" Colorschemes ---------------------------------------- {{{1
set background=dark
if has("gui_running")
 " colorscheme badwolf
 " colorscheme harlequin
 " colorscheme molokai
 " colorscheme hemisu
  colorscheme hybrid
else
  set t_Co=256
  "colorscheme bocau
  colorscheme hybrid
endif




nnoremap <Leader>w :wq<CR>
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endi


call vundle#end()            " required




filetype plugin indent on    " required
