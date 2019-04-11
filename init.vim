set autoread
set noswapfile
set nobackup
set nowritebackup
set hidden
set background=dark
set number relativenumber
set nu rnu
set history=50
set textwidth=80
set colorcolumn=+1
set termguicolors
set expandtab softtabstop=2 shiftwidth=2
set linespace=1
set guicursor=n-v-c:blinkon0
set backspace=2

call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-bufferline'
Plug 'janko-m/vim-test'
Plug 'ayu-theme/ayu-vim'
Plug 'slim-template/vim-slim'
Plug 'posva/vim-vue'
Plug 'elixir-lang/vim-elixir'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/BufOnly.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-unimpaired'
Plug 'ervandew/supertab'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

" Web development plugins
" Plug 'vim-ruby/vim-ruby'
" Plug 'tpope/vim-rails'
call plug#end()

filetype plugin indent on

let ayucolor='mirage'
colorscheme ayu

map <C-n> :NERDTreeToggle<CR>
map <F2> :set paste<CR>i
map <silent> <F3> :call BufferList()<CR>

" let g:NERDTreeShowHidden=1
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

imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>
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
nmap <silent> <C-s> :StripWhitespace<CR> :w<CR>
nmap <C-p> :FZF<CR>
nmap <leader>f :Ag<CR>
nmap <leader>b :Buffers<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufRead,BufNewFile *.es6 setlocal filetype=javascript
au InsertLeave * set nopaste
