set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'pangloss/vim-javascript'
Plugin 'tomtom/tcomment_vim'
Plugin 'junegunn/fzf.vim'
Plugin 'rking/ag.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
set shiftwidth=2
set expandtab
set showcmd
set cursorline
set hlsearch
set nobackup

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
let mapleader=","       " leader is comma

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



" Quick save command
noremap <C-x> :update<CR>
vnoremap <C-x> <C-C>:update<CR>
inoremap <C-x> <C-C>:update<CR>


inoremap jk <Esc>
noremap <space> :

" Tab
noremap <Leader>t :tabnew<CR>
map <Leader>m <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>


" Page down/up mapping
nnoremap <silent> <PageUp> <C-U><C-U>
vnoremap <silent> <PageUp> <C-U><C-U>

nnoremap <silent> <PageDown> <C-D><C-D>
vnoremap <silent> <PageDown> <C-D><C-D>

" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" set status line
set laststatus=2

" enable powerline-fonts
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#formatter = 'default'
let airline_theme='solarized'

let g:airline_solarized_bg='dark'

" enable tabline
let g:airline#extensions#tabline#enabled = 1

" set left separator
let g:airline#extensions#tabline#left_sep = ' '

" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'

" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1





