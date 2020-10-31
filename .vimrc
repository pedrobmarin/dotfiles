set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'arcticicestudio/nord-vim'
Plugin 'ervandew/supertab'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()

filetype plugin indent on
syntax enable

set autoindent
set smartindent
set smarttab

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

function! TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

set incsearch
set hlsearch
set laststatus=2
set nobackup
set noswapfile
set number
set cursorline
set autoread
set so=7

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set lazyredraw
set magic

set showmatch
set mat=2

set encoding=utf8
set ffs=unix,dos,mac

set mouse=a

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

hi SpecialKey term=bold cterm=bold ctermfg=240 ctermbg=NONE gui=bold guifg=Blue
set listchars=tab:›-
set list

colorscheme nord

let g:airline_left_sep='›'
let g:airline_right_sep='‹'

let NERDTreeShowHidden=1
