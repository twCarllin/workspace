set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/fzf.vim'
Plugin 'rking/ag.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

" javascript 
let g:javascript_plugin_jsdoc = 1

syntax on

" personal setting
set number
set relativenumber
set listchars=eol:↵,tab:»·,trail:·,extends:»,precedes:«
set list
set ru
set tabstop=2
set softtabstop=2
set expandtab
set showcmd
set cursorline
set hlsearch

" incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=B
set guioptions-=0

" Encoding setting
set encoding=utf-8
set fileencoding=utf-8


" Map pane switch
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h


" space open/closes folds
nnoremap <space> za


" move vertically by visual line
nnoremap j gj
nnoremap k gk


" jk is escape
" nnoremap jk <esc>
let mapleader=" "       " leader is comma

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" fzf quick search
nnoremap <silent> <Leader>f :Files<CR>

" ag quick search
nnoremap <leader>a :Ag


" GO Run/build/test/coverage
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)


