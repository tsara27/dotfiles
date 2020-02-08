set autoread
set background=dark
set backspace=2
set clipboard=unnamedplus
set colorcolumn=+1
set cursorline
set expandtab softtabstop=2 shiftwidth=2
set guicursor=n-v-c:blinkon0
set hidden
set history=50
set lazyredraw
set linespace=3
set nobackup
set noswapfile
set nowritebackup
set nu rnu
set number relativenumber
set termguicolors
set textwidth=80
set ttyfast

call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufOnly.vim'
call plug#end()

filetype plugin indent on

let ayucolor='mirage'
"let ayucolor='light'
colorscheme ayu

map <C-space> :NERDTreeToggle<CR>
map <F2> :set paste<CR>i
map <silent> <F3> :call BufferList()<CR>

let g:NERDTreeShowHidden=1
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
let g:indentLine_enabled = 1
let g:indentLine_char = '¬¶'
let g:indentLine_first_char = '¬¶'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
let g:indentLine_faster = 1
let loaded_netrwPlugin = 1
hi ColorColumn guibg=#212121 ctermbg=238

" Disable plain arrow keys
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>

" Resize key binding
map <Left> :vertical resize -5<CR>
map <Right> :vertical resize +5<CR>
map <S-C-j> <Plug>(is-scroll-f)
map <S-C-k> <Plug>(is-scroll-b)
map <leader>e :!ls<CR>:e
map <leader>v :!approvals verify -d vimdiff -a<CR>
nmap <C-k> [e
nmap <C-j> ]e
nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <C-s> :StripWhitespace<CR> :w<CR>
nmap <C-p> :FZF<CR>
nmap <leader>f :Ag<CR>
nmap <leader>b :Buffers<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufRead,BufNewFile *.es6 setlocal filetype=javascript

au InsertLeave * set nopaste
