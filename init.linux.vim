"set guifont=Jet\ Brains\ Mono\ Nerd\ Font:h14
set autoread
set background=dark
set backspace=2
set clipboard=unnamedplus
set colorcolumn=+1
set cursorline
set encoding=UTF-8
set expandtab softtabstop=2 shiftwidth=2
"set guifont=Jet\ Brains\ Mono\ Nerd\ Font:h14
set hidden
set history=50
set ignorecase
set iskeyword+=\-
set lazyredraw
set linespace=5
set nobackup
set noswapfile
set nowritebackup
set nu rnu
set number relativenumber
set termguicolors
set textwidth=80
set ttyfast

call plug#begin('~/.vim/plugged')
Plug 'Shougo/defx.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'easymotion/vim-easymotion'
Plug 'elixir-editors/vim-elixir'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kchmck/vim-coffee-script'
Plug 'kristijanhusak/defx-icons'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'slashmili/alchemist.vim'
Plug 'slim-template/vim-slim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufOnly.vim'
call plug#end()

filetype plugin indent on

"COLORSCHEME
let ayucolor='mirage'
let g:tokyonight_style='storm'
"let ayucolor='light'
"colorscheme pencil
"colorscheme miami-night
"colorscheme trial
colorscheme tokyonight

map <F2> :set paste<CR>i
map <silent> <F3> :call BufferList()<CR>

" Neovide configuration
"let g:neovide_fullscreen=v:true
"let g:neovide_cursor_vfx_particle_phase=1.75
"let g:neovide_cursor_animation_length=0.15
"let g:neovide_cursor_vfx_mode = 'railgun'
"let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_trail_length=0

let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let loaded_netrwPlugin = 1

hi ColorColumn guibg=#434343 ctermbg=238

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

" Coc Default Config
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json',
                             \ 'coc-tsserver', 'coc-yaml',
                             \ 'coc-snippets', 'coc-yank']

let g:coc_snippet_next = '<Down>'
let g:coc_snippet_prev = '<Up>'

" FZF
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enable enter to complete snippet or confirm autocompletion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Disable plain arrow keys
" Up and Down is used for snippets
imap <Left> <nop>
imap <Right> <nop>
map <Up> <nop>
map <Down> <nop>

" Resize key binding
map <Left> :vertical resize -5<CR>
map <Right> :vertical resize +5<CR>
map <S-C-j> <Plug>(is-scroll-f)
map <S-C-k> <Plug>(is-scroll-b)
nmap <leader>c :noh<CR>
nmap <C-k> [e
nmap <C-j> ]e
nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <C-p> :Files <CR>
nmap <leader>f :Rg <CR>
nmap <leader>b :Buffers <CR>
nmap <silent> <leader>d :GFiles?<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Save when insert mode
map <silent> <leader>s :StripWhitespace<CR><ESC> :w<CR>
nmap <silent> <leader>s :StripWhitespace<CR><ESC> :w<CR>
imap <silent> <leader>s <ESC>:StripWhitespace<CR><ESC> :w<CR>

" Open coc yank lis
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

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

call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'show_ignored_files': 1,
      \ 'buffer_name': 'defxplorer',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })
map <C-space> :Defx -columns=indent:icons:filename:type<CR>

" Defx
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
  nnoremap <silent><buffer><expr> c defx#do_action('copy')
  nnoremap <silent><buffer><expr> m defx#do_action('move')
  nnoremap <silent><buffer><expr> p defx#do_action('paste')
  nnoremap <silent><buffer><expr> l defx#do_action('open')
  nnoremap <silent><buffer><expr> E defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d defx#do_action('remove')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ; defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
  nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
endfunction

"call defx#custom#column('icon', {
"      \ 'directory_icon': '',
"      \ 'opened_icon': '',
"      \ 'root_icon': '📁',
"      \ })
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd BufRead,BufNewFile *.es6 setlocal filetype=javascript

au InsertLeave * set nopaste
