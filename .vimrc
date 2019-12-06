set nocompatible              " be iMproved, required
filetype off                  " required

scriptencoding utf-8
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" set the runtime path to include fzf
set rtp+=~/.fzf

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
Plugin 'scrooloose/syntastic'

" javascript 
let g:javascript_plugin_jsdoc = 1

syntax on

" personal setting
set number
set relativenumber
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set list
set ru
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set cursorline
set hlsearch
set nobackup
set colorcolumn=79
hi ColorColumn ctermbg=8

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


" Split more naturally
set splitbelow
set splitright


" space open/closes folds
nnoremap <space> za


" move vertically by visual line
nnoremap j gj
nnoremap k gk

let mapleader=","       " leader is comma

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" fzf quick search
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> vv :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

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
vnoremap jk <Esc>
noremap <space> :

" Tab
noremap <Leader>t :tabnew<CR>
map <Leader>m <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>

" Buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Page down/up mapping
nnoremap <silent> <PageUp> <C-U><C-U>
vnoremap <silent> <PageUp> <C-U><C-U>

nnoremap <silent> <PageDown> <C-D><C-D>
vnoremap <silent> <PageDown> <C-D><C-D>

" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#show_buffers = 0

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

" syntastic set up
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


