set nocompatible
set autoread
set hidden
set background=light
set number
set t_Co=256
set lazyredraw
set expandtab tabstop=2 shiftwidth=2
set backspace=2
set laststatus=2
set splitright
set noswapfile
set textwidth=80
set colorcolumn=+1
set noeb vb t_vb=
set runtimepath^=~/.vim/bundle/ctrlp.vim
set ttyfast
syntax on

colorscheme PaperColor

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/BufOnly.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-unimpaired'
call plug#end()

filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
map <F2> :set paste<CR>i

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:NERDTreeShowHidden=1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:polyglot_disabled = ['vala', 'thrift', 'systemd', 'sxhkd', 'vcl', 'terraform', 'scala', 'sbt', 'solidity']
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let g:indentLine_faster = 1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>
map <Left> :vertical resize -5<CR>
map <Right> :vertical resize +5<CR>
nmap <C-k> [e
nmap <C-j> ]e
nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <silent> <C-s> :StripWhitespace<CR> :w<CR>

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufRead,BufNewFile *.es6 setlocal filetype=javascript
au InsertLeave * set nopaste

