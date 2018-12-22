set nocompatible
filetype off

set number
set cursorline

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

" altercation/vim-colors-solarized
let g:solarized_termtrans=1
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set laststatus=2
set nobackup
set noswapfile

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
