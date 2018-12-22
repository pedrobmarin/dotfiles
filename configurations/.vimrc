set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'elixir-editors/vim-elixir'
Plugin 'derekwyatt/vim-scala'

call vundle#end()

filetype plugin indent on
syntax enable

set autoindent
set smartindent
set smarttab

set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab

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

" altercation/vim-colors-solarized
let g:solarized_termtrans=1
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" vim-airline/vim-airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_left_sep='›'
let g:airline_right_sep='‹'
hi SpecialKey term=bold cterm=bold ctermfg=240 ctermbg=NONE gui=bold guifg=Blue
set listchars=tab:›-
set list

" easymotion/vim-easymotion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" scrooloose/nerdtree
let NERDTreeShowHidden=1

" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>
